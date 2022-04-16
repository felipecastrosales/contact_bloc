part of 'example_bloc.dart';

abstract class ExampleState {}

class ExampleStateInitial extends ExampleState {}

class ExampleStateData extends ExampleState {
  final List<String> names;
  ExampleStateData({required this.names});
}
