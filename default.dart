import 'package:flutter/material.dart';

import 'pages/help/helpPage.dart';
import 'pages/help/start/startPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Início'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _callHelpPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HelpPage()),
    );
  }

  void _callStartPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StartPage()),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.rocket,
              size: 200,
            ),
            TextButton(
              onPressed: _callStartPage,
              child: Text('Iniciar',
              style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _callHelpPage,
        tooltip: 'Help',
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.help,
          color: Colors.black)
      ),
    );
  }
}
