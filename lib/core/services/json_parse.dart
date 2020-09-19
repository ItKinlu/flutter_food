import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:food/core/model/category_model.dart';

class JsonParse {

  static Future<List<ITCategoryModel>> getCategoryData() async {
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    final result = json.decode(jsonString);
    final resultList = result["category"];
    List<ITCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(ITCategoryModel.fromJson(json));
    }
    return categories;
  }

}