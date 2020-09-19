import 'package:flutter/material.dart';
import 'package:food/ui/pages/favor/favor.dart';
import 'package:food/ui/pages/home/home.dart';

final List<Widget> pages = [
  ITHomeScreen(),
  ITFavorScreen(),
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    title: Text("首页"),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.star),
    title: Text("收藏"),
    ),
];