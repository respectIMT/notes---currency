// // ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_is_empty

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:test1/application/notes/note_provider.dart';

// class NotePage extends StatefulWidget {
//   const NotePage({super.key});

//   @override
//   State<NotePage> createState() => _NotePageState();
// }

// class _NotePageState extends State<NotePage> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => NoteProvider(),
//       child: Consumer<NoteProvider>(
//         builder: (_, provider, child) => Scaffold(
//           backgroundColor: CupertinoColors.systemGroupedBackground,
//           floatingActionButton: FloatingActionButton(
//             onPressed: () => provider.createNewNote(context),
//             elevation: 0,
//             backgroundColor: Colors.grey,
//             child: Icon(
//               Icons.add,
//               color: Colors.white,
//             ),
//           ),
//           body: SafeArea(
//             child: Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Notes",
//                         style: TextStyle(fontSize: 28),
//                       ),
//                       Row(
//                         children: [
//                           IconButton(
//                             onPressed: () {},
//                             icon: Image.asset("assets/images/uzb.png",
//                                 height: 25),
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Image.asset("assets/images/rus.png",
//                                 height: 25),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 // NoteItem(),
//                 Expanded(
//                   child: provider.getAllNotes().length == 0
//                       ? Center(
//                           child: Text("Nothing here..."),
//                         )
//                       : CupertinoListSection.insetGrouped(
//                           children: List.generate(
//                             provider.getAllNotes().length,
//                             (index) => CupertinoListTile(
//                               title: Text(provider.getAllNotes()[index].text),
//                               onTap: () => provider.goToNotePage(
//                                   provider.getAllNotes()[index],
//                                   false,
//                                   context),
//                               trailing: IconButton(
//                                 icon: Icon(Icons.delete),
//                                 onPressed: () => provider.delateNote(
//                                   provider.getAllNotes()[index],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
