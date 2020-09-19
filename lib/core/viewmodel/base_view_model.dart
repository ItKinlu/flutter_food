import 'package:flutter/material.dart';
import 'package:food/core/model/meal_model.dart';

import 'filter_view_model.dart';

class ITBaseMealViewModel extends ChangeNotifier {
  List<ITMealModel> _meals = [];

  ITFilterViewModel _filterViewModel;

  List<ITMealModel> get meals {
    return _meals.where((element) {
      if (_filterViewModel.isGlutenFree && !element.isGlutenFree) return false;
      if (_filterViewModel.isLactoseFree && !element.isLactoseFree) return false;
      if (_filterViewModel.isVegetarian && !element.isVegetarian) return false;
      if (_filterViewModel.isVegan && !element.isVegan) return false;
      return true;
    }).toList();
  }

  void updateFilterViewModel(ITFilterViewModel model) {
    _filterViewModel = model;
    notifyListeners();
  }

  List<ITMealModel> get originMeals {
    return _meals;
  }

  set meals(List<ITMealModel> value) {
    _meals = value;
    notifyListeners();
  }
}