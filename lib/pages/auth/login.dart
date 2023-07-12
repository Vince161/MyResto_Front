import 'package:flutter/material.dart';
import 'package:my_resto/pages/components/navigation_drawer.dart';
import 'package:my_resto/pages/dashboard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';
  String errorMessage = '';

  void authenticateUser(BuildContext context) async {
    const baseUrl = 'http://holgar.duckdns.org/api/user/login/';
    String auth = 'Basic <base64 encoded username:password>';
    
    final url = Uri.parse(baseUrl + auth);

    final response = await http.post(
      url,
      headers: {
        'Authorization': 'basic <base64 encoded username:password>',
        'Username': username,
        'Password': password,
      },
    );

    if (response.statusCode == 200) {
      // Authentication successful, handle the response
      print('Authentication works. ${response.statusCode}');
      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
    } else {
      // Authentication failed, handle the error
      setState(() {
        errorMessage = 'Authentication failed. Please try again.';
        print('${response.body}}');
      });
    }
  }

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
                      Text(
                        'Connectez-vous',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height:60),
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Login
                            SizedBox(
                              width: 250,
                              child: TextFormField(
                                onChanged: (value) => setState(() => username = value),
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Nom d\'utilisateur',
                                ),
                              ),
                            ),
                            SizedBox(height:40),
                            // Password
                            SizedBox(
                              width: 250,
                              child: TextFormField(
                                onChanged: (value) => setState(() => password = value),
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                            SizedBox(height:40),
                            ElevatedButton(
                              onPressed: () {
                                authenticateUser(context);
                              }, 
                              child: Text('connexion')
                            ), 
                          ],
                        ),
                      ),
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
