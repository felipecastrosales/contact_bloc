import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_note.dart';
import 'package:equatable/equatable.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(const ExampleStateInitial()) {
    on<ExampleAddNameEvent>(_addName);
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeName);
  }

  FutureOr<void> _addName(
    ExampleAddNameEvent event,
    Emitter<ExampleState> emit,
  ) async {
    final stateExample = state;
    if (stateExample is ExampleStateData) {
      final notes = [...stateExample.notes];
      notes.add(event.note);
      emit(ExampleStateData(notes: notes));
    }
  }

  FutureOr<void> _findNames(
    ExampleFindNameEvent event,
    Emitter<ExampleState> emit,
  ) async {
    final names = ['John', 'Jane', 'Jack'];
    await Future.delayed(const Duration(seconds: 3));
    emit(
      ExampleStateData(
        notes: names.map((e) => ContactNote(name: e)).toList(),
      ),
    );
  }

  FutureOr<void> _removeName(
    ExampleRemoveNameEvent event,
    Emitter<ExampleState> emit,
  ) {
    final stateExample = state;
    if (stateExample is ExampleStateData) {
      final notes = [...stateExample.notes];
      notes.remove(event.note);
      emit(ExampleStateData(notes: notes));
    }
  }
}
