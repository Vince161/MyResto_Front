import 'package:flutter/material.dart';
import 'package:my_resto/pages/components/navigation_drawer_auth.dart';

class CommandsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resto'),
      ),
      drawer: CustomDrawerAuth(),
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
                      Text('Mes commandes'),
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