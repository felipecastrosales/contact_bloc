import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

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
            return current.names.length > 2;
          }

          return false;
        },
        listener: (context, state) {
          developer.log('state change}');
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Quantity is: ${state.names.length}')),
            );
          }
        },
        child: Column(
          children: [
            BlocConsumer<ExampleBloc, ExampleState>(
              buildWhen: (previous, current) {
                if (current is ExampleStateData) {
                  return current.names.length > 1;
                }

                return false;
              },
              listener: (context, state) {
                developer.log('state change to ${state.runtimeType}');
              },
              builder: (_, state) {
                if (state is ExampleStateData) {
                  return Text('Quantity is: ${state.names.length}');
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
            BlocSelector<ExampleBloc, ExampleState, List<String>>(
              selector: (state) {
                if (state is ExampleStateData) {
                  return state.names;
                }

                return const [];
              },
              builder: (context, names) {
                developer.log(
                  '${names.runtimeType}',
                  name: 'names runtimeType',
                );

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          BlocProvider.of<ExampleBloc>(context).add(
                            ExampleRemoveNameEvent(name: names[index]),
                          );
                        },
                        title: Text(names[index]),
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
            ExampleAddNameEvent(name: 'Challenge'),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
