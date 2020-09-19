import 'package:flutter/material.dart';
import 'package:food/core/viewmodel/favo_view_model.dart';
import 'package:food/ui/widgets/meal_item.dart';
import 'package:provider/provider.dart';


class ITFavorContent extends StatelessWidget {
  @override
  Widget build (BuildContext context ) {
    return Consumer<ITFavorViewModel> (
        builder: (ctx , vm , child ) {
          if (vm.meals.length == 0) {
            return Center(
              child: Text (
                  "没有收藏"
                  ),
            );
          }
          return ListView.builder (
              itemCount: vm.meals.length ,
              itemBuilder: (
                  ctx , index
                  ) {
                return ITMealContentItem (
                    vm.meals[index]
                    );
              }
              );
        });
  }
}
