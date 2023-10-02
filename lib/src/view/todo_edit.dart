import 'package:flutter/material.dart';


class TodoEdit extends StatelessWidget {
  const TodoEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("TODO EDIT"),
      ),
    );
  }
}