import 'package:flutter/material.dart';

import 'home_content.dart';
import 'package:food/core/extension/int_extension.dart';

class ITHomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
        leading: IconButton(
          icon: Icon(Icons.build),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
// 这里通过创建builder拿到在上次ctx后面建当前页面的ctx
//        leading: Builder(
//          builder: (ctx) {
//            return IconButton(
//              icon: Icon(Icons.build),
//              onPressed: () {
//                Scaffold.of(ctx).openDrawer();
//              },
//              );
//          },
//        ),
      ),
      body: ITHomeContent(),
    );
  }
}
