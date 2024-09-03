import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  // text editing controller to het acces to what the user
  TextEditingController myController = TextEditingController();

  // greeting message variable
  String greetingMessage = "";

    //greet user method
     void greetUser() {
       String userName = myController.text;
       setState(() {
         greetingMessage = "Hello, "+ userName;
       });
      ;
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greet user message
               Text(greetingMessage),
              //TextField
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tap your name.."
                ) ,
              ),

              //button
              ElevatedButton(
                  onPressed: greetUser,
                  child: Text("tap"),)
            ],
          ),
        ),
      ) ,
    );
  }
}
