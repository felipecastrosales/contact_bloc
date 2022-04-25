import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:contact_bloc/features/contacts/contacts_list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';

class MockContactRepository extends Mock implements ContactRepository {}

void main() {
  // declaração - declaration
  late ContactRepository repository;
  late ContactListBloc bloc;
  late List<Contact> contacts;

  // preparação - preparation
  setUp(() {
    repository = MockContactRepository();
    bloc = ContactListBloc(repository: repository);
    contacts = [
      Contact(name: 'Felipe Sales', email: 'soufeliposales@gmail.com'),
      Contact(name: 'Karol Barroso', email: 'karolbarroso33@gmail.com'),
    ];
  });

  // execução - execution
  blocTest<ContactListBloc, ContactListState>(
    'should return contacts',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    setUp: () => when(
      () => repository.findAll(),
    ).thenAnswer(
      (_) async => Future.value(contacts),
    ),
    expect: () => [
      const ContactListState.loading(),
      ContactListState.data(contacts: contacts),
    ],
  );

  blocTest<ContactListBloc, ContactListState>(
    'should return error to load contacts',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    expect: () => [
      const ContactListState.loading(),
      const ContactListState.error(error: 'Error to load contacts'),
    ],
  );
}
