import 'package:flutter/material.dart';

class CurrencyProvider extends ChangeNotifier {
  CurrencyProvider() {
    // ontap();
  }

  List<String> items = ['USD', 'EURO', 'RUB'];
  String? selectedItem = 'USD';

  int count = 0;
  String name = 'alik';
  Color backColor = Colors.green;

  void change(String? title) {
    selectedItem = title ?? "";
    notifyListeners();
  }
}
