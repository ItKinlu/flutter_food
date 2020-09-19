import 'package:flutter/material.dart';

import 'favor_content.dart';

class ITFavorScreen extends StatelessWidget {
  static const String routeName = "/favor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的收藏"),
        leading: Icon(Icons.more),
        ),
      body: ITFavorContent(),
      );
  }
}
