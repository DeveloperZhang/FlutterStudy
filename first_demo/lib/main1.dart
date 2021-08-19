import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Material Components',
      home: FirstPage(),
      routes: <String, WidgetBuilder>{
        '/first':(BuildContext context) => FirstPage(),
        '/second':(BuildContext context) => SecondPage(),
      },
      initialRoute: '/first',
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第一页'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: MaterialButton(
          color: Colors.white,
          textColor: Colors.blue,
          child: Text('跳转到第二页'),
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第二页'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('返回第一页'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

