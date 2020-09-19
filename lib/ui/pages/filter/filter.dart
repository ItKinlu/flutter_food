import 'package:flutter/material.dart';

import 'filter_content.dart';

class ITFilterScreen extends StatelessWidget {
  static String routeName = "/filter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食过滤"),
      ),
      body: ITFilterContent(),
    );
  }
}
