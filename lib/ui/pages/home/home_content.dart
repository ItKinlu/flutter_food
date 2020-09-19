import 'package:flutter/material.dart';
import 'package:food/core/model/category_model.dart';
import 'package:food/core/services/json_parse.dart';
import 'package:food/core/extension/int_extension.dart';
import 'package:food/ui/pages/home/home_category_item.dart';

class ITHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ITCategoryModel>>(
      future: JsonParse.getCategoryData(),
      builder: (ctx, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }else {
          return GridView.builder(
            itemCount: snapshot.data.length,
            padding: EdgeInsets.all(20.px),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.px,
                mainAxisSpacing: 20.px,
                childAspectRatio: 1.5
                ),
            itemBuilder: (ctx, index) {
              return ITHomeCategoryItem(snapshot.data[index]);
            },
            );
        }

      },
    );
  }
}
