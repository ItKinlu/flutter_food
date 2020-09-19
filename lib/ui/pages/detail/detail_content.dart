import 'package:flutter/material.dart';
import 'package:food/core/model/meal_model.dart';
import 'package:food/core/extension/int_extension.dart';

class ITDetailContent extends StatelessWidget {
  ITMealModel _meal;

  ITDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildBannerImage(),
          buildMakeTitle(context, "制作材料"),
          buildMakeMaterial(context),
          buildMakeTitle(context, "步骤"),
          buildSteps(context),
        ],
      ),
    );
  }

  // 1. 横幅图片
  Widget buildBannerImage() {
    return Container(
      width: double.infinity,
        child: Image.network(_meal.imageUrl)
        );
  }

  // 2. 制作材料
  Widget buildMakeMaterial(BuildContext context) {
    return buildMakeContent(context, ListView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(), // 不进行滚动
        shrinkWrap: true, // 范围内包裹（计算高度）
        itemCount: _meal.ingredients.length,
        itemBuilder: (ctx, index) {
          return Card(
            color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.px, horizontal: 10.px),
              child: Text(_meal.ingredients[index]),
              ),
            );
        }));
  }

  // 3. 制作步骤
  Widget buildSteps(BuildContext context) {
    return buildMakeContent(context, ListView.separated(
      shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text("#${index + 1}")),
            title: Text(_meal.steps[index]),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: _meal.steps.length));
  }

  // 公共方法
  Widget buildMakeTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.px),
        child: Text(title, style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.black, fontWeight: FontWeight.bold),)
        );
  }

  Widget buildMakeContent(BuildContext context, Widget child) {
    return Container(
      width: MediaQuery.of(context).size.width - 30.px,
      padding: EdgeInsets.all(8.px),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.px),
        ),
      child: child
      );
  }

}
