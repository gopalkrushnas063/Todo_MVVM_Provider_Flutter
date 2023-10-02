import 'package:flutter/material.dart';


class TodoCreate extends StatelessWidget {
  const TodoCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("TODO CREATE"),
      ),
    );
  }
}