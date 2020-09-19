import 'package:flutter/material.dart';
import 'package:food/core/route/route.dart';
import 'package:food/ui/shared/app_theme.dart';
import 'package:food/ui/shared/size_fit.dart';

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ITSizeFit.initialize();

    return MaterialApp(
      title: "美食广场",
      theme: ITAppTheme.normalTheme,
      initialRoute: ITRoute.initialRoute,
      routes: ITRoute.routes,
      onGenerateRoute: ITRoute.generateRouter,
      onUnknownRoute: ITRoute.unknownRouter,
      );
  }
}
