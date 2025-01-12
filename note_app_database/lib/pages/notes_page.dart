import 'package:flutter/material.dart';
import 'package:note_app_database/models/note_database.dart';
import 'package:provider/provider.dart';

import '../models/note.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  // text controller to access what the user typed
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // on app startup, fetch existing notes
    readNotes();
  }

  // create a note
  void createNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          // create button
          MaterialButton(
            onPressed: () {
              // add to db
              context.read<NoteDatabase>().addNote(textController.text);

              // clear controller
              textController.clear();

              // pop dialogue box
              Navigator.pop(context);
            },
            child: const Text("Create"),
          ),
        ],
      ),
    );
  }

  // read notes
  void readNotes() {
    context.read<NoteDatabase>().fetchNotes();
  }

  //update a note
   void updateNote(Note note){
    // pre-fill the current note text
     textController.text = note.text;
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Update note"),
            content: TextField(controller: textController),
            actions: [
               //update button
              MaterialButton(
                onPressed: () {
                  // add to db
                  context
                      .read<NoteDatabase>()
                      .updateNote(note.id, textController.text);

                  // clear controller
                  textController.clear();

                  // pop dialogue box
                  Navigator.pop(context);
                },
                child: const Text("Update"),
              ),
            ],
          ),
      );
   }

  //delete a note
  void deleteNote(int id){
    context.read<NoteDatabase>().deleteNote(id);
  }




  @override
  Widget build(BuildContext context) {
    // note database
    final noteDatabase = context.watch<NoteDatabase>();

    // current notes
    List<Note> currentNotes = noteDatabase.currentNotes;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Note")),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: createNote,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: currentNotes.length,
        itemBuilder: (context, index) {
          // get individual note
          final note = currentNotes[index];

          // list title UI
          return ListTile(
            title: Text(note.text),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // edit button
                IconButton(
                    onPressed: () => updateNote(note),
                    icon: const Icon(Icons.edit)),

                //delete button
                IconButton(
                    onPressed: () => deleteNote(note.id),
                    icon: const Icon(Icons.delete))
              ],
            ),
          );
        },
      ),
    );
  }
}
