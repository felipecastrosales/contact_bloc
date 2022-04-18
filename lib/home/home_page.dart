import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('bloc/example/');
              },
              child: const Text('Bloc Example'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('bloc/example/freezed');
              },
              child: const Text('Bloc Freezed Example'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/contacts/list');
              },
              child: const Text('Contacts'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/cubit');
              },
              child: const Text('Cubit'),
            ),
          ],
        ),
      ),
    );
  }
}
