import 'package:flutter/material.dart';
import 'package:portfoliobruno/views/home/home_page.dart';

class AppModel extends ChangeNotifier {

  Widget page;

  AppModel() {
    page = HomePage();
  }

  setPage(Widget page) {
    this.page = page;

    notifyListeners();
  }

}