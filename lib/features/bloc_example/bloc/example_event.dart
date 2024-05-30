part of 'example_bloc.dart';

abstract class ExampleEvent extends Equatable {
  const ExampleEvent();

  @override
  List<Object> get props => [];
}

class ExampleFindNameEvent extends ExampleEvent {}

class ExampleAddNameEvent extends ExampleEvent {
  const ExampleAddNameEvent({
    required this.note,
  });

  final ContactNote note;

  @override
  List<Object> get props => [note];
}

class ExampleRemoveNameEvent extends ExampleEvent {
  const ExampleRemoveNameEvent({
    required this.note,
  });

  final ContactNote note;

  @override
  List<Object> get props => [note];
}
