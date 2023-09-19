import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
class Secound extends StatefulWidget {
  const Secound({super.key});

  @override
  State<Secound> createState() => _SecoundState();
}

class _SecoundState extends State<Secound> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: () {
            // Navigator.pop(context);
            // Navigator.pushNamed(context, '/');
            context.go('/details');
          }, child: Text('My contact')),
        ],
      ),
    );
  }
}
