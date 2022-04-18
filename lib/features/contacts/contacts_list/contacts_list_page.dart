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
        title: const Text(''),
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              BlocSelector<ContactListBloc, ContactListState, List<Contact>>(
                selector: (state) {
                  return state.maybeWhen(
                    data: (contacts) => contacts,
                    orElse: () => const [],
                  );
                },
                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state[index].name),
                        subtitle: Text(state[index].email),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
