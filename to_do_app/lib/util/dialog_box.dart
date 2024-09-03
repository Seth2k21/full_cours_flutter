import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_button_dialog.dart';



class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

    DialogBox({super.key,
  required this.controller,
  required this.onSave,
  required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
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
              hintText: "Add a bew task",
            ),
          ),

          //button -> save+cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button
           MyButtonDialog(
             text: "save",
             onPressed: onSave),

              const SizedBox(width: 8),
              // cancel button
              MyButtonDialog(
                  text: "Cancel",
                  onPressed: onCancel)
            ],
          )
        ]),
      ),
    );
  }
}
