import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: () {
            // Navigator.pop(context);
            // Navigator.pushNamed(context, '/');
          }, child: Text("contact me on what's app")),
        ],
      ),
    );
  }
}

