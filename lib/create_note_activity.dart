import 'package:flutter/material.dart';

class CreateNoteActivity extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Nota'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(hintText: 'Título'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(hintText: 'Conteúdo'),
              maxLines: null,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Obter os dados da nota
                    final title = _titleController.text;
                    final content = _contentController.text;

                    // Passar os dados de volta para a tela principal
                    Navigator.pop(
                        context, {'title': title, 'content': content});
                  },
                  child: Text('OK'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navegar de volta para a tela anterior
                    Navigator.pop(context);
                  },
                  child: Text('Cancelar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
