import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/bloc_example/bloc/example_bloc.dart';
import 'features/bloc_example/bloc_example_page.dart';
import 'features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'features/bloc_example/bloc_freezed_example_page.dart';
import 'features/contacts/contact_register/bloc/contact_register_bloc.dart';
import 'features/contacts/contact_register/contact_register_page.dart';
import 'features/contacts/contact_update/bloc/contact_update_bloc.dart';
import 'features/contacts/contact_update/contact_update_page.dart';
import 'features/contacts/contacts_list/bloc/contact_list_bloc.dart';
import 'features/contacts/contacts_list/contacts_list_page.dart';
import 'features/contacts_cubit/list/contacts_list_cubit_page.dart';
import 'home/home_page.dart';
import 'models/contact.dart';
import 'repositories/contact_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => ContactRepository(),
      child: MaterialApp(
        title: 'Contact',
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomePage(),
          '/bloc/example/': (context) => BlocProvider(
                create: (_) => ExampleBloc()..add(ExampleFindNameEvent()),
                child: const BlocExamplePage(),
              ),
          '/bloc/example/freezed': (context) => BlocProvider(
              create: (context) => ExampleFreezedBloc()
                ..add(const ExampleFreezedEvent.findNames()),
              child: const BlocFreezedExamplePage()),
          '/contacts/list': (context) => BlocProvider(
                create: (_) => ContactListBloc(
                    repository: context.read<ContactRepository>())
                  ..add(
                    const ContactListEvent.findAll(),
                  ),
                child: const ContactsListPage(),
              ),
          '/contacts/register': (context) => BlocProvider(
                create: (context) => ContactRegisterBloc(
                  contactRepository: context.read(),
                ),
                child: const ContactRegisterPage(),
              ),
          '/contacts/update': (context) {
            final contact =
                ModalRoute.of(context)!.settings.arguments as Contact;
            return BlocProvider(
              create: (context) => ContactUpdateBloc(
                contactsRepository: context.read(),
              ),
              child: ContactUpdatePage(contact: contact),
            );
          },
          '/cubit/list': (context) {
            return BlocProvider(
              create: (context) => ContactListBloc(
                repository: context.read()..findAll(),
              ),
              child: const ContactsListCubitPage(),
            );
          },
        },
      ),
    );
  }
}
