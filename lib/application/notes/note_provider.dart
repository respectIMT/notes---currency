// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:test1/infrastructure/local/hive_database.dart';
import 'package:test1/infrastructure/model/note_model.dart';
import 'package:test1/presentation/pages/notes/note_edit.dart';

class NoteProvider extends ChangeNotifier {
  NoteProvider() {
    init();
  }

  void init() {}

  final db = HiveDatabase();
  // overall list of notes
  List<Note> allNotes = [];

  void initializeNotes() {
    allNotes = db.loadNotes();
  }

  // get notes
  List<Note> getAllNotes() {
    return allNotes;
  }

  // add a new note
  void addNewNote(Note note) {
    allNotes.add(note);
    notifyListeners();
  }

  // update note
  void updateNote(Note note, String text) {
    for (int i = 0; i < allNotes.length; i++) {
      if (allNotes[i].id == note.id) {
        allNotes[i].text = text;
        notifyListeners();
      }
    }
  }

  // delate note
  void delateNote(Note note) {
    allNotes.remove(note);
    notifyListeners();
  }

  void createNewNote(BuildContext context) {
    int id = allNotes.length;
    Note newNote = Note(
      id: id,
      text: "",
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditNote(note: newNote, isNewNote: false),
      ),
    );
    goToNotePage(newNote, true, context);
  }

  void goToNotePage(Note note, bool isNewNote, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditNote(note: note, isNewNote: false),
      ),
    );
  }
}
