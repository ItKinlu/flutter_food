import 'package:flutter/material.dart';
import 'package:food/core/model/meal_model.dart';
import 'package:food/core/viewmodel/favo_view_model.dart';
import 'package:food/ui/pages/detail/detail_content.dart';
import 'package:provider/provider.dart';

class ITDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as ITMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: ITDetailContent(meal),
      floatingActionButton: Consumer<ITFavorViewModel>(
        builder: (ctx, vm, child) {
          final iconsData = vm.isFavor(meal) ? Icons.favorite_border : Icons.favorite;

          return FloatingActionButton(
            child: Icon(iconsData),
            onPressed: () {
              vm.handleMeal(meal);
            },
            );
        },
      ),
    );
  }
}
