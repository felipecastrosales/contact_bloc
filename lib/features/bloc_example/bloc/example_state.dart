part of 'example_bloc.dart';

abstract class ExampleState extends Equatable {
  const ExampleState();

  @override
  List<Object> get props => [];
}

class ExampleStateInitial extends ExampleState {
  const ExampleStateInitial();

  @override
  List<Object> get props => [];
}

class ExampleStateData extends ExampleState {
  final List<ContactNote> notes;
  const ExampleStateData({required this.notes});

  @override
  List<Object> get props => [notes];
}
