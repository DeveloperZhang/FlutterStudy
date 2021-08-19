import 'package:flutter/material.dart';

void main() {
  runApp(new MyStatefulWidget("Hello Flutter"));
}


class MyStatefulWidget extends StatefulWidget{
  String content;
  MyStatefulWidget(this.content);

  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyStatefulWidget> {
  bool isShowText = true;

  void increment(){
    setState(() {
      widget.content += "!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            child: isShowText?Text(widget.content):null,
            onTap: increment,
          ),
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  final String content;
  MyApp(this.content);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Text(content),
        ),
      ),
    );
  }

}
