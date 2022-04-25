import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_state.dart';
part 'contact_list_cubit.freezed.dart';

class ContactListCubit extends Cubit<ContactListState> {
  final ContactRepository _repository;
  ContactListCubit({required ContactRepository repository})
      : _repository = repository,
        super(const ContactListState.initial());

  Future<void> findAll() async {
    try {
      emit(const ContactListState.loading());
      final contacts = await _repository.findAll();
      //await Future.delayed(const Duration(seconds: 3));
      emit(ContactListState.data(contacts: contacts));
    } catch (e, s) {
      developer.log('Erro ao buscar contatos', error: e, stackTrace: s);
      emit(const ContactListState.error(message: 'Error to load contacts'));
    }
  }

  Future<void> delete(Contact model) async {
    emit(const ContactListState.loading());
    await _repository.delete(model);
    findAll();
  }
}
