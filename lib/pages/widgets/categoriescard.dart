import 'package:flutter/material.dart';
import 'package:my_resto/pages/models/categories.dart';
import 'package:my_resto/pages/widgets/categoriesicon.dart';


class CategoriesCard extends StatelessWidget {

  Categories categories;
  Function onCardClick;

  CategoriesCard({ required this.categories, required this.onCardClick });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: Container(
                margin: EdgeInsets.all(20),
                height: 300,
                child: Stack(
                children: [
                Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/' + this.categories.imgName + '.jpg',
                fit: BoxFit.cover
                ),
                ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                Colors.black.withOpacity (0.7),
                Colors. transparent
                ],
                ),
                ),
                ),
                ),
                Positioned(
                  bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                  children: [
                    CategoriesIcon(
                      color: this.categories.color,
                      iconName: this.categories.icon,
                      size: 30,
                    ),
                  SizedBox (width: 10),
                  Text ( this.categories.name,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                  ) // TextStyle
                  ) // Text
                  ],
                  ),
                ),
                ),// Row
                ],
                ),
    ),
    ) ;
  }
}