import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('はじめてのアプリ'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text('あなたの名前を教えてください。')
        ],
      ),
    );
  }
}
