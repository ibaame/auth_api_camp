import 'package:api/api.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    fetchUsers();
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('welcome'),
      ),
    );
  }
}
