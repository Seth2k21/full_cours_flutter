import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:to_do_app/util/dialog_box.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [];
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Charger les données de SharedPreferences
  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? todoString = prefs.getString('TODOLIST');
    if (todoString != null) {
      setState(() {
        toDoList = List<Map<String, dynamic>>.from(json.decode(todoString));
      });
    }
  }


  void _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('TODOLIST', json.encode(toDoList));
  }


  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index]['completed'] = !toDoList[index]['completed'];
    });
    _saveData();
  }


  void saveNewTask() {
    setState(() {
      toDoList.add({
        'task': _controller.text,
        'completed': false,
        'date': DateTime.now().toString(),
      });
      _controller.clear();
    });
    _saveData();
    Navigator.of(context).pop();
  }


  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }


  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
    _saveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "TO DO",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ),
        elevation: 0,
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index]['task'],
            taskCompleted: toDoList[index]['completed'],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
