import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_model.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    String? code,
    String? message,
  }) = _Failure;
}
