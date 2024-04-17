import 'package:flutter/material.dart';
import 'create_note_activity.dart';

class ListNotesActivity extends StatefulWidget {
  @override
  _ListNotesActivityState createState() => _ListNotesActivityState();
}

class _ListNotesActivityState extends State<ListNotesActivity> {
  List<Map<String, String>> _notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notas'),
      ),
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_notes[index]['title'] ?? ''),
            onTap: () {
              // Navegar para a tela de leitura de notas
            },
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _notes.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navegar para a tela de criação de notas e obter os dados da nota criada
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateNoteActivity()),
          );

          // Adicionar a nota à lista
          if (result != null &&
              result.containsKey('title') &&
              result.containsKey('content')) {
            setState(() {
              _notes.add(
                  {'title': result['title'], 'content': result['content']});
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
