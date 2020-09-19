import 'package:flutter/material.dart';
import 'package:food/ui/pages/filter/filter.dart';
import 'package:food/ui/pages/main/initialize_items.dart';
import 'package:food/core/extension/int_extension.dart';

class ITMainScreen extends StatefulWidget {
  static const String routeName = "/";

  @override
  _ITMainScreenState createState() => _ITMainScreenState();
}

class _ITMainScreenState extends State<ITMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
          width: 250.px,
          child: Drawer(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.orange,
                  height: 100.px,
                  alignment: Alignment(0, 0.8),
                  child: Text("开始动手", style: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.bold,fontSize: 32.px),),
                  ),
                ListTile(leading: Icon(Icons.restaurant), title: Text("进餐"), onTap: () {
                  Navigator.of(context).pop();
                },),
                ListTile(leading: Icon(Icons.settings), title: Text("过滤"), onTap: () {
                  Navigator.of(context).pushNamed(ITFilterScreen.routeName);
                },),
              ],
              ),
            )),
      body: IndexedStack(
        children: pages,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
