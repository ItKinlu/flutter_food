import 'package:flutter/material.dart';
import 'package:food/app.dart';
import 'package:food/core/services/meal_request.dart';
import 'package:food/core/viewmodel/deal_view_model.dart';
import 'package:food/core/viewmodel/favo_view_model.dart';
import 'package:food/core/viewmodel/filter_view_model.dart';
import 'package:provider/provider.dart';

void main () {
  // Provider => ViewModel/Provider/Consumer(Selector)
  runApp(MultiProvider(
    providers: [
//      ChangeNotifierProvider(
//        create: (ctx) => ITMealViewModel(),
//        ),

//      ChangeNotifierProvider(
//        create: (ctx) => ITFavorViewModel(),
//        ),
      ChangeNotifierProvider(
        create: (ctx) => ITFilterViewModel(),
      ),
      ChangeNotifierProxyProvider<ITFilterViewModel, ITMealViewModel>(
        create: (ctx) => ITMealViewModel(),
        update: (ctx, filterVM, mealVM) {
          mealVM.updateFilterViewModel(filterVM);
          return mealVM;
        },
        ),
      ChangeNotifierProxyProvider<ITFilterViewModel, ITFavorViewModel>(
        create: (ctx) => ITFavorViewModel(),
        update: (ctx, filterVM, favorVM) {
          favorVM.updateFilterViewModel(filterVM);
          return favorVM;
        },
        ),
    ],
    child: MyAPP(),
  ));
}




