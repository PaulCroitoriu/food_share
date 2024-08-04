import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/config/injectable.dart';
import 'package:food_share/core/translations/locale_keys.g.dart';
import 'package:food_share/pages/donation_details/cubit/donation_details_cubit.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';
import 'package:food_share/repositories/user_repository/user_repository.dart';
import 'package:food_share/router.gr.dart';

@RoutePage()
class DonationDetailsPage extends StatefulWidget implements AutoRouteWrapper {
  final Donation donation;

  const DonationDetailsPage({Key? key, required this.donation}) : super(key: key);

  @override
  State<DonationDetailsPage> createState() => _DonationDetailsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => DonationDetailsCubit(
        firestore: FirebaseFirestore.instance,
        auth: FirebaseAuth.instance,
      ),
      child: this,
    );
  }
}

class _DonationDetailsPageState extends State<DonationDetailsPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Donation Details"),
        actions: widget.donation.complianceVerified && getIt<UserRepository>().isDonor
            ? [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => context.pushRoute(AddDonationRoute()),
                )
              ]
            : [],
      ),
      bottomNavigationBar: BottomAppBar(
        child: FilledButton(
          onPressed: widget.donation.status == DonationStatus.available
              ? () {
                  context.read<DonationDetailsCubit>().claimDonation(widget.donation.id);
                  context.maybePop();
                }
              : null,
          child: _getButtonText(widget.donation.status),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            if (widget.donation.images != null && widget.donation.images!.isNotEmpty)
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 300,
                    child: PageView(
                      onPageChanged: (index) => setState(() => _currentPage = index),
                      children: widget.donation.images!.map((url) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
                          child: Image.network(
                            url,
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Positioned(
                    bottom: 8.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(widget.donation.images!.length, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          width: _currentPage == index ? 12.0 : 8.0,
                          height: _currentPage == index ? 12.0 : 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index ? Colors.white : Colors.grey,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              )
            else
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/images/placeholder.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.donation.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.donation.complianceVerified ? 'Status: Active' : 'Status: Taken',
                      style: TextStyle(
                        color: widget.donation.complianceVerified ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      'Expires on',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      widget.donation.bestBeforeDate?.toShortDateString() ?? '',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              widget.donation.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16.0),
            _buildDetailRow(LocaleKeys.quantity.tr(), '${widget.donation.quantity} ${widget.donation.unit.name.tr()}'),
            _buildDetailRow(LocaleKeys.suitableFor.tr(), widget.donation.suitableFor.name.tr()),
            _buildDetailRow(LocaleKeys.donationCondition.tr(), widget.donation.condition.name.tr()),
            _buildDetailRow(LocaleKeys.urgencyLevel.tr(), widget.donation.urgency.name.tr()),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  _getButtonText(DonationStatus status) {
    String text = '';

    switch (status) {
      case DonationStatus.available:
        text = 'Request donation';
        break;

      case DonationStatus.cancelled:
        text = 'Donation canceled';
        break;

      case DonationStatus.claimed:
        text = 'Donation claimed';
        break;

      case DonationStatus.expired:
        text = 'Donation expired';
        break;

      case DonationStatus.pendingApproval:
        text = 'Donation is pending';
        break;

      default:
        break;
    }

    return Text(text);
  }
}

extension DateTimeExtension on DateTime {
  String toShortDateString() {
    return "$day/$month/$year";
  }
}
