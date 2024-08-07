import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/services/storage_service.dart';
import 'package:food_share/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

import 'package:food_share/core/translations/locale_keys.g.dart';
import 'package:food_share/pages/add_donation/bloc/add_donation_bloc.dart';
import 'package:food_share/repositories/donation_repository/models/donation_model.dart';

@RoutePage()
class AddDonationPage extends StatefulWidget implements AutoRouteWrapper {
  final Donation? donation;

  const AddDonationPage({this.donation, super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AddDonationBloc(auth: FirebaseAuth.instance, firestore: FirebaseFirestore.instance, storageService: StorageService()),
      child: this,
    );
  }

  @override
  State<AddDonationPage> createState() => _AddDonationPageState();
}

class _AddDonationPageState extends State<AddDonationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  Unit? _selectedUnit;
  FoodType? _selectedFoodType;
  DonationCondition? _selectedDonationCondition;
  SuitableFor? _selectedSuitableFor;
  UrgencyLevel? _selectedUrgencyLevel;
  List<File> _images = [];

  @override
  void dispose() {
    _dateController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _quantityController.dispose();

    super.dispose();
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> pickedFiles = await picker.pickMultiImage();

    setState(() => _images = pickedFiles.map((file) => File(file.path)).toList());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddDonationBloc, AddDonationState>(
      listener: (context, state) {
        switch (state.status) {
          case AddDonationStatus.success:
            context.maybePop(true);
            break;

          case AddDonationStatus.error:
            showError(context: context, message: state.error);
            break;

          default:
            break;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(LocaleKeys.postADonation.tr()),
            centerTitle: false,
          ),
          bottomNavigationBar: BottomAppBar(
            child: FilledButton.icon(
              onPressed: state.isLoading
                  ? null
                  : () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AddDonationBloc>().add(
                              AddDonationEvent.postDonation(
                                title: _titleController.text,
                                description: _descriptionController.text,
                                quantity: double.tryParse(_quantityController.text) ?? 0,
                                unit: _selectedUnit!,
                                foodType: _selectedFoodType!,
                                donationCondition: _selectedDonationCondition!,
                                suitableFor: _selectedSuitableFor!,
                                urgencyLevel: _selectedUrgencyLevel!,
                                expireDate: DateTime.tryParse(_dateController.text),
                                images: _images,
                              ),
                            );
                      }
                    },
              icon: const Icon(CupertinoIcons.add),
              label: Text(LocaleKeys.postDonation.tr()),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: TextFormField(
                      enabled: !state.isLoading,
                      controller: _titleController,
                      decoration: InputDecoration(
                        hintText: LocaleKeys.addTitleHint.tr(),
                        labelText: LocaleKeys.title.tr(),
                        alignLabelWithHint: true,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return LocaleKeys.pleaseEnterATitle.tr();
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    controller: _descriptionController,
                    minLines: 2,
                    maxLines: 2,
                    enabled: !state.isLoading,
                    decoration: InputDecoration(
                      hintText: LocaleKeys.addDescriptionHint.tr(),
                      labelText: LocaleKeys.description.tr(),
                      alignLabelWithHint: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.pleaseEnterADescription.tr();
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: TextFormField(
                          controller: _quantityController,
                          keyboardType: TextInputType.number,
                          enabled: !state.isLoading,
                          onFieldSubmitted: (_) {},
                          decoration: InputDecoration(
                            hintText: LocaleKeys.addQuantityHint.tr(),
                            labelText: LocaleKeys.quantity.tr(),
                            alignLabelWithHint: true,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return LocaleKeys.pleaseEnterAQuantity.tr();
                            }
                            if (double.tryParse(value) == null) {
                              return LocaleKeys.pleaseEnterAValidNumber.tr();
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Flexible(
                        flex: 3,
                        child: DropdownButtonFormField<Unit>(
                          hint: Text(LocaleKeys.selectUnitHint.tr()),
                          value: _selectedUnit,
                          items: Unit.values.map((Unit type) {
                            return DropdownMenuItem<Unit>(
                              value: type,
                              child: Text(type.name.tr()),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            enabled: !state.isLoading,
                            labelText: LocaleKeys.unit.tr(),
                            hintText: LocaleKeys.selectUnitHint.tr(),
                            alignLabelWithHint: true,
                          ),
                          onChanged: (Unit? newValue) {
                            setState(() {
                              _selectedUnit = newValue;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return LocaleKeys.pleaseSelectAUnit.tr();
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  DropdownButtonFormField<FoodType>(
                    hint: Text(LocaleKeys.selectFoodTypeHint.tr()),
                    value: _selectedFoodType,
                    items: FoodType.values.map((FoodType type) {
                      return DropdownMenuItem<FoodType>(
                        value: type,
                        child: Text(type.name.tr()),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      enabled: !state.isLoading,
                      labelText: LocaleKeys.foodType.tr(),
                      hintText: LocaleKeys.selectFoodTypeHint.tr(),
                      alignLabelWithHint: true,
                    ),
                    onChanged: (FoodType? newValue) {
                      setState(() {
                        _selectedFoodType = newValue;
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return LocaleKeys.pleaseSelectAFoodType.tr();
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  DropdownButtonFormField<DonationCondition>(
                    value: _selectedDonationCondition,
                    items: DonationCondition.values.map((DonationCondition type) {
                      return DropdownMenuItem<DonationCondition>(
                        value: type,
                        child: Text(type.name.tr()),
                      );
                    }).toList(),
                    onChanged: (DonationCondition? newValue) {
                      setState(() {
                        _selectedDonationCondition = newValue;
                      });
                    },
                    decoration: InputDecoration(
                      enabled: !state.isLoading,
                      labelText: LocaleKeys.donationCondition.tr(),
                      hintText: LocaleKeys.selectDonationConditionHint.tr(),
                      alignLabelWithHint: true,
                    ),
                    validator: (value) {
                      if (value == null) {
                        return LocaleKeys.pleaseSelectADonationCondition.tr();
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  DropdownButtonFormField<SuitableFor>(
                    value: _selectedSuitableFor,
                    items: SuitableFor.values.map((SuitableFor type) {
                      return DropdownMenuItem<SuitableFor>(
                        value: type,
                        child: Text(type.name.tr()),
                      );
                    }).toList(),
                    onChanged: (SuitableFor? newValue) {
                      setState(() {
                        _selectedSuitableFor = newValue;
                      });
                    },
                    decoration: InputDecoration(
                      enabled: !state.isLoading,
                      labelText: LocaleKeys.suitableFor.tr(),
                      hintText: LocaleKeys.selectSuitableForHint.tr(),
                      alignLabelWithHint: true,
                    ),
                    validator: (value) {
                      if (value == null) {
                        return LocaleKeys.pleaseSelectSuitableOption.tr();
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  DropdownButtonFormField<UrgencyLevel>(
                    value: _selectedUrgencyLevel,
                    items: UrgencyLevel.values.map((UrgencyLevel type) {
                      return DropdownMenuItem<UrgencyLevel>(
                        value: type,
                        child: Text(type.name.tr()),
                      );
                    }).toList(),
                    onChanged: (UrgencyLevel? newValue) {
                      setState(() {
                        _selectedUrgencyLevel = newValue;
                      });
                    },
                    decoration: InputDecoration(
                      enabled: !state.isLoading,
                      labelText: LocaleKeys.urgencyLevel.tr(),
                      hintText: LocaleKeys.selectUrgencyLevelHint.tr(),
                      alignLabelWithHint: true,
                    ),
                    validator: (value) {
                      if (value == null) {
                        return LocaleKeys.pleaseSelectAnUrgencyLevel.tr();
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    controller: _dateController,
                    enabled: !state.isLoading,
                    decoration: InputDecoration(
                      labelText: LocaleKeys.expireDate.tr(),
                      hintText: LocaleKeys.selectExpireDateHint.tr(),
                      suffixIcon: const Icon(CupertinoIcons.calendar),
                    ),
                    readOnly: true,
                    onTap: () => _selectDate(context),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add_a_photo),
                    label: const Text('Add Images'),
                    onPressed: state.isLoading ? null : _pickImage,
                  ),
                  const SizedBox(height: 12.0),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: _images.map((file) {
                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.file(
                              file,
                              width: 92,
                              height: 92,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 4,
                            child: GestureDetector(
                              onTap: state.isLoading
                                  ? null
                                  : () {
                                      setState(() => _images.remove(file));
                                    },
                              child: const Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (selectedDate != null) {
      setState(() {
        _dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }
}
