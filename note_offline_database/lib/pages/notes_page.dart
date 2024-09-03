import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_offline_database/components/drawer.dart';
import 'package:note_offline_database/components/note_tile.dart';
import 'package:provider/provider.dart';
import '../models/note_database.dart';
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

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  // create a note
  void createNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(hintText: 'Enter your note'),
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

  // update a note
  void updateNote(Note note) {
    // pre-fill the current note text
    textController.text = note.text;
    showDialog(
      barrierColor: Theme.of(context).colorScheme.background,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Update note"),
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(hintText: 'Edit your note'),
        ),
        actions: [
          // update button
          MaterialButton(
            onPressed: () {
              // update in db
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

  // delete a note
  void deleteNote(int id) {
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: createNote,
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.inversePrimary),
      ),
      drawer: const MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            //HEADING
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "Notes",
                style: GoogleFonts.dmSerifText(fontSize: 48,
                     color: Theme.of(context).colorScheme.inversePrimary),

              ),
            ),
          
          const SizedBox(height: 25,),
          
          Expanded(
            child: ListView.builder(
              itemCount: currentNotes.length,
              itemBuilder: (context, index) {
                // get individual note
                final note = currentNotes[index];

                // list title UI
                return NoteTile(
                  text: note.text,
                  onEditPressed: () =>updateNote(note),
                  onDeletePressed: () => deleteNote(note.id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
