part of 'contact_list_bloc.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState.initial() = _ContactListStateInitial;
  const factory ContactListState.loading() = _ContactListStateLoading;
  const factory ContactListState.data({required List<Contact> contacts}) =
      _ContactListStateData;
  const factory ContactListState.error({required String error}) =
      _ContactListStateError;
}
