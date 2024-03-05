import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.amber[50],
    title: const Text('Homapage'),
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
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pushNamed(context, '/Homepage');
                  },
                ),
              ),
            
            Card(
              color: Colors.amber,
              child: ListTile(
                leading: const Icon(Icons.newspaper),
                title: const Text('News'),
                onTap: () {
                  Navigator.pushNamed(context, '/News');
                },
              ),
            ),
            Card(
              color: Colors.amber,
              child: ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About'),
                onTap: () {
                  Navigator.pushNamed(context, '/About');
                },
              ),
            ),
            Card(
              color: Colors.amber,
              child: ListTile(
                leading: const Icon(Icons.people),
                title: const Text('My Account'),
                onTap: () {
                  Navigator.pushNamed(context, '/MyAccount');
                },
              ),
            ),
            Card(
              color: Colors.amber[100],
              child: ListTile(
                leading: const Icon(Icons.exit_to_app),
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