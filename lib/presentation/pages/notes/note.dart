// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_is_empty

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/application/notes/note_provider.dart';
import 'package:test1/infrastructure/model/note_model.dart';
import 'package:test1/presentation/pages/notes/note_edit.dart';
import 'package:test1/presentation/pages/notes/note_item.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<NoteProvider>(context, listen: false).initializeNotes();
  }

  // create new note
  void createNewNote() {
    int id = Provider.of<NoteProvider>(context, listen: false).allNotes.length;
    Note newNote = Note(
      id: id,
      text: "",
    );

    goToNotePage(newNote, true);
  }

  void goToNotePage(Note note, bool isNewNote) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditNote(note: note, isNewNote: false),
      ),
    );
  }

  void deleteNote(Note note) {
    Provider.of<NoteProvider>(context, listen: false).delateNote(note);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (_, provider, child) => Scaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: createNewNote,
          elevation: 0,
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notes",
                      style: TextStyle(fontSize: 28),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon:
                              Image.asset("assets/images/uzb.png", height: 25),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              Image.asset("assets/images/rus.png", height: 25),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              NoteItem(),
              Expanded(
                child: provider.getAllNotes().length == 0
                    ? Center(child: Text("Nothing here..."))
                    : CupertinoListSection.insetGrouped(
                        children: List.generate(
                          provider.getAllNotes().length,
                          (index) => CupertinoListTile(
                            title: Text(provider.getAllNotes()[index].text),
                            onTap: () => goToNotePage(
                                provider.getAllNotes()[index], false),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => deleteNote(
                                provider.getAllNotes()[index],
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
