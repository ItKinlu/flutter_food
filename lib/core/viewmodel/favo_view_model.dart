
import 'package:flutter/material.dart';
import 'package:food/core/model/meal_model.dart';
import 'package:food/core/viewmodel/base_view_model.dart';

class ITFavorViewModel extends ITBaseMealViewModel {

  void addMeal(ITMealModel model) {
    originMeals.add(model);
    notifyListeners();
  }

  void removeMeal(ITMealModel model) {
    originMeals.remove(model);
    notifyListeners();
  }

  bool isFavor(ITMealModel model) {
    return originMeals.contains(model);
  }

  void handleMeal(ITMealModel model) {
    if (isFavor(model)) {
      removeMeal(model);
    }else {
      addMeal(model);
    }
  }

}