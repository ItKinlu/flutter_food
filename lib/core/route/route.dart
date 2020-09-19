import 'package:flutter/material.dart';
import 'package:food/ui/pages/detail/detail.dart';
import 'package:food/ui/pages/filter/filter.dart';
import 'package:food/ui/pages/main/main.dart';
import 'package:food/ui/pages/meal/meal.dart';

class ITRoute {

  static final String initialRoute = ITMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    ITMainScreen.routeName: (ctx) => ITMainScreen(),
    ITMealScreen.routeName: (ctx) => ITMealScreen(),
    ITDetailScreen.routeName: (ctx) => ITDetailScreen(),
  };

  static final RouteFactory generateRouter = (setting) {
    if (setting.name == ITFilterScreen.routeName) {
      return MaterialPageRoute(
        builder: (ctx) {
          return ITFilterScreen();
        },
        fullscreenDialog: true,
      );
    }
    return null;
  };

  static final RouteFactory unknownRouter = (setting) {
    return null;
  };

}