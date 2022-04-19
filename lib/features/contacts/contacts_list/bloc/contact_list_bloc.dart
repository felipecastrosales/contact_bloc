import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_event.dart';
part 'contact_list_state.dart';
part 'contact_list_bloc.freezed.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final ContactRepository _repository;
  ContactListBloc({
    required ContactRepository repository,
  })  : _repository = repository,
        super(const ContactListState.initial()) {
    on<_ContactListEventFindAll>(_findAll);
  }

  Future<void> _findAll(
    _ContactListEventFindAll event,
    Emitter<ContactListState> emit,
  ) async {
    try {
      emit(const ContactListState.loading());
      final contacts = await _repository.findAll();
      emit(ContactListState.data(contacts: contacts));
      throw Exception();
    } catch (e, s) {
      developer.log(
        'Error to load contacts',
        error: e.toString(),
        stackTrace: s,
      );
      emit(const ContactListState.error(error: 'Error to load contacts'));
    }
  }
}
