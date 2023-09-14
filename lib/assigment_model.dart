import 'package:flutter/material.dart';

class AssigmentModel {
  String? name;
  String? image;
  String? details;
  String? photo;

  AssigmentModel(Map map) {
    name = map["name"];
    image = map["image"];
    details = map["details"];
    photo = map["photo"];
  }
}
