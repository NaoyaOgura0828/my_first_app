import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = 'あなたの名前を教えて下さい。';
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

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
              child: Text(
                _textHeader,
                style: TextStyle(fontSize: 10.0),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller:
                  _textEditingController, // 入力した文字を管理するTextEditionContorollerの設定
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _onClick(), // ボタンのクリック処理
                child: Text(
                  'おしてね',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _onClick() {
    setState(() {
      // 文字
      var inputText = _textEditingController.text;
      _textHeader = 'こんにちは！$inputTextさん';
      // 画像
      _imageWidget = Image.asset('assets/images/hello.png');
    });
  }
}
