import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Navigator.pushNamed(context, '/bloc/example/');
              },
              child: const Text('Bloc Example'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bloc/example/freezed');
              },
              child: const Text('Bloc Freezed Example'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contacts/list');
              },
              child: const Text('Contacts'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cubit/list');
              },
              child: const Text('Cubit'),
            ),
          ],
        ),
      ),
    );
  }
}
