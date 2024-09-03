import 'package:flutter/material.dart';

class MyButtonDialog extends StatelessWidget {

  final String text;
  VoidCallback onPressed;

   MyButtonDialog({
    super.key,
   required this.text,
   required this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed : onPressed,
      color: Theme.of(context).primaryColorLight,
      child: Text(text),
    );
  }
}
