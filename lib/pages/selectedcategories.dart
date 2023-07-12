
import 'package:flutter/material.dart';
import 'package:my_resto/pages/components/navigation_drawer.dart';

class SelectedCategories extends StatelessWidget {


@override
Widget build (BuildContext context) {
return Scaffold(
  appBar: AppBar(
        title: Text('My Resto'),
      ),
      drawer: CustomDrawer(),
body: Container(
child: Center(child: Text('Catégories')),
) // Container
); // Scaffold
}
}