import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:contact_bloc/models/contact.dart';

import 'bloc/contact_list_bloc.dart';

class ContactsListPage extends StatelessWidget {
  const ContactsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List Page'),
      ),
      body: RefreshIndicator(
        onRefresh: () async => context
            .read<ContactListBloc>()
            .add(const ContactListEvent.findAll()),
        child: BlocListener<ContactListBloc, ContactListState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      error,
                      style: const TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  ),
                );
              },
            );
          },
          listenWhen: (previous, current) {
            return current.maybeWhen(
              error: (error) => true,
              orElse: () => false,
            );
          },
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    Loader<ContactListBloc, ContactListState>(
                      selector: (state) {
                        return state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        );
                      },
                    ),
                    BlocSelector<ContactListBloc, ContactListState,
                        List<Contact>>(
                      selector: (state) {
                        return state.maybeWhen(
                          data: (contacts) => contacts,
                          orElse: () => const [],
                        );
                      },
                      builder: (_, contacts) {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            final contact = contacts[index];
                            return ListTile(
                              title: Text(contact.name),
                              subtitle: Text(contact.email),
                              onTap: () async {
                                await Navigator.pushNamed(
                                  context,
                                  '/contacts/update',
                                  arguments: contact,
                                );
                                context.read<ContactListBloc>().add(
                                      const ContactListEvent.findAll(),
                                    );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/contacts/register');
          context.read<ContactListBloc>().add(const ContactListEvent.findAll());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
