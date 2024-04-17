import 'package:flutter/material.dart';
import 'list_notes_activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloco de Notas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListNotesActivity(),
    );
  }
}
