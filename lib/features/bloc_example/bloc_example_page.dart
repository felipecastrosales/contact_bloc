import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:contact_bloc/models/contact_note.dart';

import 'bloc/example_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BlocPage'),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        bloc: context.read<ExampleBloc>(),
        listenWhen: (previous, current) {
          if (previous is ExampleStateInitial && current is ExampleStateData) {
            return current.notes.length > 2;
          }

          return false;
        },
        listener: (context, state) {
          developer.log('state change}');
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Quantity is: ${state.notes.length}')),
            );
          }
        },
        child: Column(
          children: [
            BlocConsumer<ExampleBloc, ExampleState>(
              buildWhen: (previous, current) {
                if (current is ExampleStateData) {
                  return current.notes.length > 1;
                }

                return false;
              },
              listener: (context, state) {
                developer.log('state change to ${state.runtimeType}');
              },
              builder: (_, state) {
                if (state is ExampleStateData) {
                  return Text('Quantity is: ${state.notes.length}');
                }

                return const SizedBox.shrink();
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state) => state is ExampleStateInitial,
              builder: (context, showLoader) {
                if (showLoader) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, List<ContactNote>>(
              selector: (state) {
                if (state is ExampleStateData) {
                  return state.notes;
                }

                return const [];
              },
              builder: (context, notes) {
                developer.log(
                  '${notes.runtimeType}',
                  name: 'notes runtimeType',
                );

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: notes.length,
                    itemBuilder: (context, index) {
                      final note = notes[index];
                      return ListTile(
                        onTap: () {
                          BlocProvider.of<ExampleBloc>(context).add(
                            ExampleRemoveNameEvent(note: note),
                          );
                        },
                        title: Text(note.name),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ExampleBloc>(context).add(
            ExampleAddNameEvent(note: ContactNote(name: 'Challenge')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
