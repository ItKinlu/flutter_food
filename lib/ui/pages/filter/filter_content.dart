import 'package:flutter/material.dart';
import 'package:food/core/extension/int_extension.dart';
import 'package:food/core/viewmodel/filter_view_model.dart';
import 'package:provider/provider.dart';

class ITFilterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("展示你的选择", style: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.bold),),
          Expanded(
            child: Consumer<ITFilterViewModel>(
              builder: (ctx, vm, child) {
                return ListView(
                  children: <Widget>[
                    buildListTitle("无谷蛋白", "展示无谷蛋白食物", vm.isGlutenFree, (value) {
                      vm.isGlutenFree = value;
                    }),
                    buildListTitle("不含乳糖", "展示不含乳糖食物", vm.isLactoseFree, (value) {
                      vm.isLactoseFree = value;
                    }),
                    buildListTitle("普通素食者", "展示普通素食者食物", vm.isVegetarian, (value) {
                      vm.isVegetarian = value;
                    }),
                    buildListTitle("严格素食者", "展示严格素食者食物", vm.isVegan, (value) {
                      vm.isVegan = value;
                    }),
                  ],
                  );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildListTitle(title, subtitle, selected, Function onchanged) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(value: selected, onChanged: onchanged,),
    );
  }

}
