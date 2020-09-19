import 'package:food/core/model/meal_model.dart';

import 'http_request.dart';

class ITMealRequest {
  static Future<List<ITMealModel>> getMealData() async {
    final url = "/meal";
    final result = await HttpRequest.request(url);
    final mealArray = result["meal"];
    List<ITMealModel> meals = [];
    for(var json in mealArray) {
      meals.add(ITMealModel.fromJson(json));
    }
    return meals;
  }
}