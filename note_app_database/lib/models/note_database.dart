import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:note_app_database/models/note.dart';
import 'package:path_provider/path_provider.dart';


class NoteDatabase extends ChangeNotifier{
  static late Isar isar;

  //INITIAlize-DATABASE
 static Future<void> initialize() async {
   final dir = await getApplicationCacheDirectory();
   isar = await Isar.open(
       [NoteSchema],
       directory: dir.path,
   );
 }

 // list of notes
 final  List<Note> currentNotes = [];

  // CREATE a note and save to db
 Future<void> addNote(String textFromUser) async {

   //create a new note object
   final newNote = Note()..text = textFromUser;

   //save to db
   await isar.writeTxn(() => isar.notes.put(newNote));

   //re_read from db
   fetchNotes();

 }


  //READ note from db
  Future<void> fetchNotes() async {
   List<Note> fetchedNotes = await isar.notes.where().findAll();
   currentNotes.clear();
   currentNotes.addAll(fetchedNotes);
   notifyListeners();
  }


  //UPDATE a note in db
  Future<void> updateNote(int id, String newText) async {
   final existingNote = await isar.notes.get(id);
   if(existingNote != null){
       existingNote.text = newText;
       await isar.writeTxn(() => isar.notes.put(existingNote));
       await fetchNotes();
   }
  }



  //DELETE a note  from the db
Future<void> deleteNote(int id) async {
   await isar.writeTxn(() => isar.notes.delete(id));
   await fetchNotes();
}





}