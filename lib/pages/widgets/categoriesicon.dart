import 'package:flutter/material.dart';
import 'package:my_resto/pages/widgets/iconfont.dart';

class CategoriesIcon extends StatelessWidget {

  Color color;
  String iconName;
  double size;

CategoriesIcon({ required this.color, required this.iconName, required this.size });

  @override
  Widget build (BuildContext context) {
    return ClipOval(
      child: Container(
      color: this.color,
      padding: EdgeInsets.all (10),
      child: IconFont (
        color: Colors.white,
        iconName: this.iconName,
        size: this.size,
        ) // IconFont
      ), // Container
    ); // Clip0val
  }
}