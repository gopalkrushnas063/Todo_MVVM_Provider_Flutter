import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm_provider_flutter_app/helper/navigator.dart';
import 'package:todo_mvvm_provider_flutter_app/src/view/todo_list.dart';
import 'package:todo_mvvm_provider_flutter_app/src/viewmodel/todo_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TodoViewModel>(
          create: (_) => TodoViewModel(NavigationService.instance),
        )
      ],
      child: MaterialApp(
        navigatorKey: NavigationService.instance.navigationKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TodoList(),
      ),
    );
  }
}
