import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';

@RoutePage()
class AddDonationPage extends StatelessWidget {
  const AddDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Add donation"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              minLines: 4,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Description',
                alignLabelWithHint: true,
              ),
            ),
            const SizedBox(height: 12.0),
            DropdownButton<DonationCondition>(
              hint: const Text('Select Donation Type'),
              value: null,
              items: DonationCondition.values.map((DonationCondition type) {
                return DropdownMenuItem<DonationCondition>(
                  value: type,
                  child: Text(type.name),
                );
              }).toList(),
              onChanged: (DonationCondition? newValue) {},
            ),
            const SizedBox(height: 12.0),
            DropdownButton<DonationCondition>(
              hint: const Text('Select Donation Type'),
              value: null,
              items: DonationCondition.values.map((DonationCondition type) {
                return DropdownMenuItem<DonationCondition>(
                  value: type,
                  child: Text(type.name),
                );
              }).toList(),
              onChanged: (DonationCondition? newValue) {},
            ),
          ],
        ),
      ),
    );
  }
}
