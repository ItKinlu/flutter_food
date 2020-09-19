import 'package:flutter/material.dart';
import 'package:food/core/model/category_model.dart';

import 'meal_content.dart';

class ITMealScreen extends StatelessWidget {
  static const String routeName = "/meal";

  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context).settings.arguments as ITCategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ITMealContent(),
      ),
    );
  }
}
