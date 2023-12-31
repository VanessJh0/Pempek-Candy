import 'package:flutter/material.dart';
import 'package:pempek_candy/models/branch.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Menu> _menu = [];
  List<Menu> get menu => _menu;

  void toggleFavorite(Menu menu) {
    final isExist = _menu.contains(menu);
    if (isExist) {
      _menu.remove(menu);
    } else {
      _menu.add(menu);
    }
    notifyListeners();
  }

  bool isExist(Menu menu) {
    final isExist = _menu.contains(menu);
    return isExist;
  }

  void clearFavorite() {
    _menu = [];
    notifyListeners();
  }
}
