import 'package:flutter/material.dart';
import 'package:my_resto/pages/models/categories.dart';
import 'package:my_resto/pages/models/subcategories.dart';

class Utils {
  static List <Categories> getMockedCategories(){
    return [
      Categories(name: 'Pizza', icon: 'b', color: Color.fromARGB(255, 25, 184, 10), imgName: "pizza1", subCategories: [subCategories(name: 'Pizza Margarita', icon: 'b', color: Color.fromARGB(255, 25, 184, 10), imgName: "pizza1", subCategories: [])]),
      Categories(name: 'Burger', icon: 'c', color: Color.fromARGB(255, 255, 0, 0), imgName: "burger1", subCategories: []),
      Categories(name: 'Frites', icon: 'd', color: Color.fromARGB(255, 252, 138, 7), imgName: "frites1", subCategories: []),
      Categories(name: 'Tacos', icon: 'e', color: Color.fromARGB(255, 0, 110, 255), imgName: "tacos1", subCategories: []),
      ];
  }
}