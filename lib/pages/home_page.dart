import 'package:flutter/material.dart';
import 'package:my_resto/pages/components/navigation_drawer.dart';
import 'package:my_resto/pages/helpers/utils.dart';
import 'package:my_resto/pages/models/categories.dart';
import 'package:my_resto/pages/selectedcategories.dart';
import 'package:my_resto/pages/widgets/categoriescard.dart';

class HomePage extends StatelessWidget {

  List<Categories> categories = Utils.getMockedCategories();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resto'),
      ),
      drawer: CustomDrawer(),
       body: Container(
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text('Listes des catégories',
              textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black)
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (BuildContext ctx, int index) {
                return CategoriesCard (
                  categories: categories[index],
                  onCardClick: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute (
                      builder: (context) => SelectedCategories()
                      ),
                    );
                  },
                );
              },
            ),
            ),
          ],
        ),
      ),
    );
  }
}