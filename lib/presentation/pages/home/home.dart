// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/application/home/home_provider.dart';
import 'package:test1/presentation/pages/currency/currency.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, provider, child) => Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  // TextButton(
                  //     onPressed: () {
                  //       Navigator.push(context, MaterialPageRoute(builder: (context) => NotePage()));
                  //     },
                  //     child: Text("Note")),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CurrencyPage()));
                      },
                      child: Text("Curreny")),
                ],
              ),
            ),
          ],
        )),

        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () {},
        //     backgroundColor: Colors.white.withOpacity(0.5),
        //     child: Icon(
        //       Icons.add,
        //       color: Colors.white,
        //     ),
        //   ),
        //   body: SafeArea(
        //     child: Column(
        //       children: [
        //         Container(
        //           padding: EdgeInsets.all(10),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Text(
        //                 "Notes",
        //                 style: TextStyle(fontSize: 28),
        //               ),
        //               Row(
        //                 children: [
        //                   IconButton(
        //                     onPressed: () {},
        //                     icon: Image.asset(
        //                       "assets/images/uzb.png",
        //                       height: 25,
        //                     ),
        //                   ),
        //                   IconButton(
        //                     onPressed: () {},
        //                     icon: Image.asset(
        //                       "assets/images/rus.png",
        //                       height: 25,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //         NoteItem(),
        //         Expanded(child: Container()),
        //       ],
        //     ),
        //   ),
      ),
    );
  }
}
