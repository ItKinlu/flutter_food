import 'package:flutter/material.dart';

class ITFilterViewModel extends ChangeNotifier {
  bool _isGlutenFree = false; // 无谷蛋白

  bool _isLactoseFree = false; // 乳糖

  bool _isVegetarian = false; // 素食主义

  bool _isVegan = false;   // 严格素食主义

  bool get isLactoseFree => _isLactoseFree;

  set isLactoseFree(bool value) {
    _isLactoseFree = value;
    notifyListeners();
  }

  bool get isVegan => _isVegan;

  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }

  bool get isGlutenFree => _isGlutenFree;

  set isGlutenFree(bool value) {
    _isGlutenFree = value;
    notifyListeners();
  }

  bool get isVegetarian => _isVegetarian;

  set isVegetarian(bool value) {
    _isVegetarian = value;
    notifyListeners();
  }




}