import 'package:flutter/material.dart';
import 'package:food/core/model/meal_model.dart';
import 'package:food/core/services/meal_request.dart';
import 'package:food/core/viewmodel/base_view_model.dart';
import 'package:food/core/viewmodel/filter_view_model.dart';

class ITMealViewModel extends ITBaseMealViewModel {
  ITMealViewModel() {
    ITMealRequest.getMealData().then((value) {
      meals = value;
      notifyListeners();
    });
  }

}