import 'package:flutter/material.dart';
import 'package:food/core/model/category_model.dart';
import 'package:food/core/model/meal_model.dart';
import 'package:food/core/viewmodel/deal_view_model.dart';
import 'package:food/ui/widgets/meal_item.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';



/**
 * Consumer的消费方式
class ITMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as ITCategoryModel;
    return Consumer<ITMealViewModel>(
      builder: (ctx, vm, child) {
        final meals = vm.meals.where((element) => element.categories.contains(category.id)).toList();
        return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) {
              return ListTile(title: Text(meals[index].title),);
            });
      },
    );
  }
}
 */
class ITMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as ITCategoryModel;
    return Selector<ITMealViewModel, List<ITMealModel>>(
      selector: (ctx, vm) => vm.meals.where((element) => element.categories.contains(category.id)).toList(),
      shouldRebuild: (prev, next) => !ListEquality().equals(prev, next),
      builder: (ctx, meals, child) {
        return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) {
              return ITMealContentItem(meals[index]);
            });
      },
    );
  }
}