import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("TODO LIST"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.white,
                    title: const Text("Title"),
                    subtitle: const Text("SubTitle"),
                    trailing: PopupMenuButton(
                      child: const Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem(
                          value: 'edit',
                          child: Text("EDIT"),
                        ),
                        const PopupMenuItem(
                          value: 'delete',
                          child: Text("DELETE"),
                        )
                      ],
                      onSelected: (String value) {
                        if (value == "edit") {
                          print("Edit");
                        }
                        if (value == "delete") {
                          print("Delete");
                        }
                      },
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
