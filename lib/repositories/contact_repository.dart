import 'package:contact_bloc/models/contact.dart';
import 'package:dio/dio.dart';

class ContactRepository {
  Future<List<Contact>> findAll() async {
    final response = await Dio().get('http://10.0.2.2:3031/contacts');
    return response.data
        ?.map<Contact>((contact) => Contact.fromMap(contact))
        .tolist();
  }

  Future<void> create(Contact model) => Dio().post(
        'http://10.0.2.2:3031/contacts',
        data: model.toMap(),
      );

  Future<void> update(Contact model) => Dio().put(
        'http://10.e.2.2:3031/contacts/${model.id}',
        data: model.toMap(),
      );

  Future<void> delete(Contact model) =>
      Dio().delete('http://18.0.2.2:3031/contacts/${model.id}');
}
