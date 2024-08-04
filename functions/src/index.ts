import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

admin.initializeApp();

const db = admin.firestore();


const delay = (ms: number) => new Promise(res => setTimeout(res, ms));

enum DonationStatus {
    available = 'available',
    pendingApproval = 'pendingApproval',
    claimed = 'claimed',
    completed = 'completed',
    rejected = 'rejected',
    expired = 'expired',
    cancelled = 'cancelled'
}

export const processClaim = functions
    .runWith({
        timeoutSeconds: 120,
        memory: '256MB',
    })
    .firestore.document('claims/{claimId}')
    .onCreate(async (snap, context) => {
        const claim = snap.data();
        const donationId = claim?.donationId;
        console.log('Claim created with donationId:', donationId);

        if (!donationId) {
            console.error('No donationId found in claim.');
            return;
        }

        const donationRef = db.collection('donations').doc(donationId);

        try {
            const donationDoc = await donationRef.get();
            if (donationDoc.exists) {
                const donationData = donationDoc.data();
                console.log('Donation found:', donationData);

                if (donationData?.status === DonationStatus.pendingApproval) {
                    console.log('Donation is in pending approval status. Waiting 1 minute...');
                    await delay(60000); // Delay for 1 minute

                    try {
                        await donationRef.update({ status: DonationStatus.claimed });
                        console.log('Donation status updated to claimed.');

                        await snap.ref.update({ status: DonationStatus.claimed });
                        console.log('Claim status updated to claimed.');

                        const charityId = claim.charityId;
                        const payload = {
                            notification: {
                                title: 'Donation Approved',
                                body: `Your claim ${donationData.title} has been approved. Please proceed with the pickup.`,
                            },
                        };

                        // Add notification to Firestore
                        try {
                            await db.collection('notifications').add({
                                title: payload.notification.title,
                                body: payload.notification.body,
                                userId: charityId,
                                timestamp: admin.firestore.FieldValue.serverTimestamp(),
                                read: false,
                            });
                            console.log('Notification added to Firestore.');
                        } catch (error) {
                            console.error('Error adding notification to Firestore:', error);
                        }

                        // Send notification to device
                        const charityToken = await getCharityToken(charityId);
                        if (charityToken) {
                            await admin.messaging().sendToDevice(charityToken, payload);
                            console.log('Notification sent to charity.');
                        } else {
                            console.log('No FCM token found for charity.');
                        }
                    } catch (error) {
                        console.error('Error during delayed approval process:', error);
                    }
                } else {
                    console.log('Donation is not in pending approval status.');
                }
            } else {
                console.log('Donation not found.');
            }
        } catch (error) {
            console.error('Error processing claim:', error);
        }
    });

async function getCharityToken(charityId: string): Promise<string | undefined> {
    const charityDoc = await db.collection('users').doc(charityId).get();
    if (charityDoc.exists) {
        const data = charityDoc.data();
        const fcmToken = data?.fcmToken;
        console.log('Retrieved FCM token for charity:', fcmToken);
        return fcmToken;
    } else {
        console.log('Charity document does not exist.');
        return undefined;
    }
}
