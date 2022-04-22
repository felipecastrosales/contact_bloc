import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';

part 'contact_register_bloc.freezed.dart';
part 'contact_register_event.dart';
part 'contact_register_state.dart';

class ContactRegisterBloc
    extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  final ContactRepository _contactRepository;

  ContactRegisterBloc({required ContactRepository contactRepository})
      : _contactRepository = contactRepository,
        super(const ContactRegisterState.initial()) {
    on<_Save>(_save);
  }

  FutureOr<void> _save(
    _Save event,
    Emitter<ContactRegisterState> emit,
  ) async {
    try {
      emit(const ContactRegisterState.loading());
      await Future.delayed(const Duration(seconds: 3));
      final contact = Contact(
        name: event.name,
        email: event.email,
      );
      await _contactRepository.create(contact);
      emit(const ContactRegisterState.success());
    } catch (e, s) {
      developer.log(
        'Error to save contact',
        error: e.toString(),
        stackTrace: s,
      );
      emit(const ContactRegisterState.error(message: 'Error to save contact'));
    }
  }
}
