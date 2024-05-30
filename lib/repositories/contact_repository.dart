import 'package:contact_bloc/models/contact.dart';
import 'package:dio/dio.dart';

class ContactRepository {
  Future<List<Contact>> findAll() async {
    final response = await Dio().get('http://127.0.0.1:3031/contacts');
    return response.data
        ?.map<Contact>((contact) => Contact.fromMap(contact))
        .toList();
  }

  Future<void> create(Contact model) => Dio().post(
        'http://127.0.0.1:3031/contacts',
        data: model.toMap(),
      );

  Future<void> update(Contact model) => Dio().put(
        'http://127.0.0.1:3031/contacts/${model.id}',
        data: model.toMap(),
      );

  Future<void> delete(Contact model) =>
      Dio().delete('http://127.0.0.1:3031/contacts/${model.id}');
}
