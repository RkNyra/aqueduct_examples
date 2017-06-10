import 'package:flutter/material.dart';
import 'list_widget.dart';
import 'create_widget.dart';
import 'login_widget.dart';
import 'store.dart';

/*
flutter packages get

 */

void main() {
  runApp(new TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (_) => new LoginWidget(),
        "/home": (_) => new NotesWidget(title: "Todo"),
        "/create": (_) => new CreateNoteWidget()
      }
    );
  }
}