import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test1/infrastructure/model/note_model.dart';

class HiveDatabase {
  final _myBox = Hive.box('note_database');

  List<Note> loadNotes() {
    List<Note> savedNotesFormatted = [];

    if (_myBox.get("All_notes") != null) {
      List<dynamic> savedNote = _myBox.get("All_notes");
      for (int i = 0; i < savedNote.length; i++) {
        Note individualNote = Note(id: savedNote[i][0], text: savedNote[i][1]);
        savedNotesFormatted.add(individualNote);
      }
    } else {
      savedNotesFormatted.add(Note(id: 0, text: "First Note"));
    }
    return savedNotesFormatted;
  }

  void savedNote(List<Note> allNotes) {
    List<List<dynamic>> allNotesFormatter = [];
    for (var note in allNotes) {
      int id = note.id;
      String text = note.text;
      allNotesFormatter.add([id, text]);
    }

    _myBox.put("All_notes", allNotesFormatter);
  }
}
