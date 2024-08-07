import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/config/injectable.dart';
import 'package:food_share/pages/donations/bloc/donations_bloc.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';
import 'package:food_share/repositories/user_repository/user_repository.dart';
import 'package:food_share/router.gr.dart';

@RoutePage()
class DonationsPage extends StatefulWidget implements AutoRouteWrapper {
  const DonationsPage({super.key});

  @override
  State<DonationsPage> createState() => _DonationsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => DonationsBloc(auth: FirebaseAuth.instance, userRepository: getIt<UserRepository>()),
      child: this,
    );
  }
}

class _DonationsPageState extends State<DonationsPage> {
  @override
  void initState() {
    super.initState();
    context.read<DonationsBloc>().add(const DonationsEvent.getDonations());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DonationsBloc, DonationsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Donations'),
            centerTitle: false,
          ),
          body: RefreshIndicator.adaptive(
            onRefresh: () async => context.read<DonationsBloc>().add(const DonationsEvent.getDonations()),
            child: ListView.builder(
              itemCount: state.donations.length,
              itemBuilder: (context, index) {
                Donation donation = state.donations[index];
                return DonationCard(donation: donation);
              },
            ),
          ),
        );
      },
    );
  }
}

class DonationCard extends StatefulWidget {
  final Donation donation;

  const DonationCard({Key? key, required this.donation}) : super(key: key);

  @override
  State<DonationCard> createState() => _DonationCardState();
}

class _DonationCardState extends State<DonationCard> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.donation.images != null && widget.donation.images!.isNotEmpty)
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 200,
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
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                'assets/images/placeholder.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.donation.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          _getConditionIcon(widget.donation.condition),
                          color: Theme.of(context).iconTheme.color,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          widget.donation.bestBeforeDate?.toShortDateString() ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Text(
                  widget.donation.description,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _getText(widget.donation.status),
                      style: _getTextStyle(widget.donation.status),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Navigate to donation details page if needed
                        context.pushRoute(DonationDetailsRoute(donation: widget.donation));
                      },
                      child: const Text('View details'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconData _getConditionIcon(DonationCondition condition) {
    switch (condition) {
      case DonationCondition.fresh:
        return Icons.eco;
      case DonationCondition.frozen:
        return Icons.ac_unit;
      case DonationCondition.preserved:
        return Icons.inventory;
      default:
        return Icons.help;
    }
  }

  String _getText(DonationStatus status) {
    switch (status) {
      case DonationStatus.available:
        return 'Available';
      case DonationStatus.pendingApproval:
        return 'Pending Approval';
      case DonationStatus.claimed:
        return 'Claimed';
      case DonationStatus.completed:
        return 'Completed';
      case DonationStatus.rejected:
        return 'Rejected';
      case DonationStatus.expired:
        return 'Expired';
      case DonationStatus.cancelled:
        return 'Cancelled';
      default:
        return 'Unknown';
    }
  }

  TextStyle _getTextStyle(DonationStatus status) {
    switch (status) {
      case DonationStatus.available:
        return const TextStyle(color: Colors.green, fontWeight: FontWeight.bold);
      case DonationStatus.pendingApproval:
        return const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold);
      case DonationStatus.claimed:
        return const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold);
      case DonationStatus.completed:
        return const TextStyle(color: Colors.green, fontWeight: FontWeight.bold);
      case DonationStatus.rejected:
        return const TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
      case DonationStatus.expired:
        return const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);
      case DonationStatus.cancelled:
        return const TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
      default:
        return const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
    }
  }
}

extension DateTimeExtension on DateTime {
  String toShortDateString() {
    return "$day/$month/$year";
  }
}
