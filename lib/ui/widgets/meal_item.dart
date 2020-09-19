import 'package:flutter/material.dart';
import 'package:food/core/model/meal_model.dart';
import 'package:food/core/extension/int_extension.dart';
import 'package:food/core/viewmodel/favo_view_model.dart';
import 'package:food/ui/pages/detail/detail.dart';
import 'package:provider/provider.dart';

import 'operation_item.dart';

class ITMealContentItem extends StatelessWidget {

  ITMealModel _meal;

  ITMealContentItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.px)),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOperationInfo(context),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(ITDetailScreen.routeName, arguments: _meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12.px),topRight: Radius.circular(12.px)),
            child: Image.network(_meal.imageUrl, width: double.infinity, height: 250.px, fit: BoxFit.cover,)),
        Positioned(
          right: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6.px),
            ),
            child: Text(_meal.title, style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.px),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ITOperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
            ITOperationItem(Icon(Icons.restaurant), "${_meal.complexityStr}强度"),
            buildFavorItem(),
          ],
        ),
      );
  }

  Widget buildFavorItem() {
    return Consumer<ITFavorViewModel>(
      builder: (ctx, vm, child) {
        final iconsData = vm.isFavor(_meal) ? Icons.favorite_border : Icons.favorite;
        final titleData = vm.isFavor(_meal) ? "收藏" : "未收藏";
        return  GestureDetector(
          onTap: () {
            vm.handleMeal(_meal);
          },
            child: ITOperationItem(Icon(iconsData), titleData));
      },
    );
  }

}
