import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_event.dart';
part 'contact_update_state.dart';
part 'contact_update_bloc.freezed.dart';

class ContactUpdateBloc extends Bloc<ContactUpdateEvent, ContactUpdateState> {
  final ContactRepository _contactsRepository;
  ContactUpdateBloc({
    required ContactRepository contactsRepository,
  })  : _contactsRepository = contactsRepository,
        super(const _Initial()) {
    on<_Save>(_save);
  }

  FutureOr<void> _save(
    _Save event,
    Emitter<ContactUpdateState> emit,
  ) async {
    try {
      emit(const ContactUpdateState.loading());
      final model = Contact(id: event.id, name: event.name, email: event.email);
      await _contactsRepository.update(model);
      emit(const ContactUpdateState.success());
    } catch (e, s) {
      developer.log('Erro ao atualizar o contato', error: e, stackTrace: s);
      emit(
        const ContactUpdateState.error(message: 'Erro ao atualizar contato'),
      );
    }
  }
}
