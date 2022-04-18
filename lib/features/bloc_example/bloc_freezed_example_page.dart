import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_freezed/example_freezed_bloc.dart';

class BlocFreezedExamplePage extends StatelessWidget {
  const BlocFreezedExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Freezed'),
      ),
      body: Column(
        children: [
          BlocSelector<ExampleFreezedBloc, ExampleFreezedState, bool>(
            selector: (state) {
              return state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );
            },
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
          BlocSelector<ExampleFreezedBloc, ExampleFreezedState, List<String>>(
            selector: (state) {
              // state.whenOrNull()
              return state.maybeWhen(
                data: (names) => names,
                orElse: () => const <String>[],
              );
            },
            builder: (_, names) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    title: Text(names[index]),
                  );
                },
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ExampleFreezedBloc>().add(
                const ExampleFreezedEvent.addName(name: 'Challenge'),
              );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
