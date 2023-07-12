import 'package:flutter/material.dart';
import 'package:my_resto/pages/models/categories.dart';

class subCategories extends Categories{

  subCategories({
    required String name,
    required String icon,
    required Color color,
    required String imgName, required super.subCategories
  }) : super(name: name, icon: icon, color: color, imgName: imgName);
}