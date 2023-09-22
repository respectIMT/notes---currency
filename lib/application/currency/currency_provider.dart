// ignore_for_file: unused_local_variable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CurrencyProvider extends ChangeNotifier {
  CurrencyProvider() {
    var now = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(now);
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
