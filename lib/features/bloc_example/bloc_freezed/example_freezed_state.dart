part of 'example_freezed_bloc.dart';

@freezed
class ExampleFreezedState with _$ExampleFreezedState {
  factory ExampleFreezedState.initial() = _ExampleFreezedStateInitial;
  factory ExampleFreezedState.data({required List<String> names}) =
      _ExampleFreezedStateData;
  factory ExampleFreezedState.loading() = _ExampleFreezedStateLoading;
  factory ExampleFreezedState.showBanner({
    required List<String> names,
    required String message,
  }) = _ExampleFreezedStateShowBanner;
}
