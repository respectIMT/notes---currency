import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/application/currency/currency_provider.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrencyProvider(),
      child: Consumer<CurrencyProvider>(
        builder: (_, provider, child) => SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 300,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Currency Converte",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '22.09.2023',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.green)),
                          child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: const TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(0),
                                      hintText: "0",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle()),
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)))),
                      Container(
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.green)),
                          child: Center(
                            child: DropdownButton<String>(
                              padding: const EdgeInsets.all(0),
                              value: provider.selectedItem,
                              items: provider.items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: provider.change,
                            ),
                          ))
                    ]),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.green)),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("0.00", style: TextStyle(fontSize: 18)),
                            Row(children: [
                              Image.asset(
                                "assets/images/uzb.png",
                                height: 20,
                              ),
                              const SizedBox(width: 3),
                              const Text("UZS", style: TextStyle(fontSize: 18))
                            ])
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
