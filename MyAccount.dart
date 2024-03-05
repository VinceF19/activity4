import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.amber[50],
    title: const Text('My Account'),
  ),
    drawer: Drawer(
      child: Expanded(
        child: Container(

          color: Colors.amber[50],
          child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Card(
                color: Colors.amber,
                child: ListTile(
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pushNamed(context, '/MyAccount');
                  },
                ),
              ),
            
            Card(
              color: Colors.amber,
              child: ListTile(
                title: const Text('News'),
                onTap: () {
                  Navigator.pushNamed(context, '/News');
                },
              ),
            ),
            Card(
              color: Colors.amber,
              child: ListTile(
                title: const Text('About'),
                onTap: () {
                  Navigator.pushNamed(context, '/About');
                },
              ),
            ),
            Card(
              color: Colors.amber,
              child: ListTile(
                title: const Text('My Account'),
                onTap: () {
                  Navigator.pushNamed(context, '/MyAccount');
                },
              ),
            ),
            Card(
              color: Colors.amber[100],
              child: ListTile(
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                  },
                  ),
                  ),
          ]
            ),
        ),
      ),
    ),
    body: Container(
      color: Colors.amber[50],
    ),
    );
  }
}