import 'dart:async';

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
    emit(const ContactRegisterState.loading());
    final contact = Contact(
      name: event.name,
      email: event.email,
    );
    await _contactRepository.create(contact);
  }
}
