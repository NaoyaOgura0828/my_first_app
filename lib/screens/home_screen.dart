import 'package:flutter/cupertino.dart';
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
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text('あなたの名前を教えて下さい。', style: TextStyle(fontSize: 10.0),),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: null, //TODO 入力した文字を管理するTextEditionContorollerの設定
            ),
            Image.asset('assets/images/hello.png'),
            ElevatedButton(
                onPressed: null, //TODO ボタンのクリック処理
                child: Text('おしてね', style: TextStyle(fontSize: 18.0),),
            )
          ],
        ),
      ),
    );
  }
}
