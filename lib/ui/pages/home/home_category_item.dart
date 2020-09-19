import 'package:flutter/material.dart';
import 'package:food/core/model/category_model.dart';
import 'package:food/core/extension/int_extension.dart';
import 'package:food/ui/pages/meal/meal.dart';

class ITHomeCategoryItem extends StatelessWidget {

  ITCategoryModel _category;

  ITHomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: _category.cColor,
          borderRadius: BorderRadius.circular(12.px),
          gradient: LinearGradient(
              colors: [
                _category.cColor.withOpacity(0.5),
                _category.cColor,
              ]
              )
          ),
        alignment: Alignment.center,
        child: Text(_category.title, style: Theme.of(context).textTheme.headline2.copyWith(
          fontWeight: FontWeight.bold,
          ),),
        ),
      onTap: () {
        Navigator.of(context).pushNamed(ITMealScreen.routeName, arguments: _category);
      },
    );
  }
}
