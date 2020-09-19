import 'package:flutter/material.dart';

class ITCategoryModel {
  String id;
  String title;
  String color;
  Color cColor;

  ITCategoryModel({this.id, this.title, this.color});

  ITCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
    cColor = Color(int.parse(color, radix: 16) | 0xff000000);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}