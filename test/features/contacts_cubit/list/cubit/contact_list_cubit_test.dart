import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/models/contact.dart';
import 'package:contact_bloc/repositories/contact_repository.dart';

class MockContactRepository extends Mock implements ContactRepository {}

void main() {
  // declaração - declaration
  late ContactRepository repository;
  late ContactListCubit cubit;
  late List<Contact> contacts;

  // preparação - preparation
  setUp(() {
    repository = MockContactRepository();
    cubit = ContactListCubit(repository: repository);
    contacts = [
      Contact(name: 'Felipe Sales', email: 'soufeliposales@gmail.com'),
      Contact(name: 'Karol Barroso', email: 'karolbarroso33@gmail.com'),
    ];
  });

  // execução - execution
  blocTest<ContactListCubit, ContactListState>(
    'should return contacts',
    build: () => cubit,
    act: (cubit) => cubit.findAll(),
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

  blocTest<ContactListCubit, ContactListState>(
    'should return error to load contacts',
    build: () => cubit,
    act: (cubit) => cubit.findAll(),
    expect: () => [
      const ContactListState.loading(),
      const ContactListState.error(message: 'Error to load contacts'),
    ],
  );
}
