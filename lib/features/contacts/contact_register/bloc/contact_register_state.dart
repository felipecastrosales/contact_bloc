part of 'contact_register_bloc.dart';

@freezed
class ContactRegisterState with _$ContactRegisterState {
  const factory ContactRegisterState.initial() = _Initial;
  const factory ContactRegisterState.loading() = _Loading;
  const factory ContactRegisterState.success() = Success;
  const factory ContactRegisterState.error({required String message}) = _Error;
}
