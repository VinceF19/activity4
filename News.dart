import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.amber[50],
    title: const Text('News'),
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
                    Navigator.pushNamed(context, '/Homepage');
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
                },
              ),
            ),
            Card(
              color: Colors.amber,
              child: ListTile(
                title: const Text('My Account'),
                onTap: () {
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