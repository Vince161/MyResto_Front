import 'package:flutter/material.dart';
import 'package:my_resto/pages/components/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resto'),
      ),
      drawer: CustomDrawer(),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Page d\'accueil'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ], 
      ),
    );
  }
}