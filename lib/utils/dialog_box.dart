import 'package:flutter/material.dart';
import 'package:todo_list/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Nova Tarefa",
              ),
            ),

            // buttons save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Cancelar', onPressed: onCancel),
                const SizedBox(width: 8),
                MyButton(text: 'Salvar', onPressed: onSave),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
