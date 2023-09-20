// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:test1/infrastructure/local/hive_database.dart';
import 'package:test1/infrastructure/model/note_model.dart';

class NoteProvider extends ChangeNotifier {
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
}
