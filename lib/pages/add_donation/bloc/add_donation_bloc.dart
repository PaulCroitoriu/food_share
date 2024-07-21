import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_donation_event.dart';
part 'add_donation_state.dart';
part 'add_donation_bloc.freezed.dart';

class AddDonationBloc extends Bloc<AddDonationEvent, AddDonationState> {
  AddDonationBloc() : super(AddDonationState.initial()) {
    on<AddDonationEvent>((event, emit) {});
  }
}
