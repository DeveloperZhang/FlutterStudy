import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          items: [
            new BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: '银行'),
            new BottomNavigationBarItem(icon: Icon(Icons.contacts), label: '联系人'),
            new BottomNavigationBarItem(icon: Icon(Icons.library_music), label: '音乐'),
          ],
        ),
        body:Center(
          child: Text('联系人页面'),
        ),
      ),
    );
  }
}