// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/application/currency/currency_provider.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrencyProvider>(
      builder: (_, provider, child) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Currency Converte",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "19.09.2023",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.green)),
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(0),
                                      hintText: "0",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle()),
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)))),
                      Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.green)),
                          child: Center(
                            child: DropdownButton<String>(
                              padding: EdgeInsets.all(0),
                              value: provider.selectedItem,
                              items: provider.items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: provider.change,
                            ),
                          ))
                    ]),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.green)),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("0.00", style: TextStyle(fontSize: 18)),
                            Row(children: [
                              Image.asset(
                                "assets/images/uzb.png",
                                height: 20,
                              ),
                              SizedBox(width: 3),
                              Text("UZS", style: TextStyle(fontSize: 18))
                            ])
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
