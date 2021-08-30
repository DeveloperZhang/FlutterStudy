import 'package:flutter/material.dart';

main()=>runApp(TextFieldWidget2());


class TextFieldWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    _TextFieldState _textFieldState = _TextFieldState();
    return _textFieldState;
  }
}

class _TextFieldState extends State<TextFieldWidget2> {

  TextEditingController _unameController = TextEditingController();

  @override
  void initState() {
    _unameController.addListener(() {
      print(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('TextField组件')),
          body: Column(
            children: [
              TextField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                    hintText: "请输入用户名",
                    prefixIcon: Icon(Icons.person)
                ),
                onChanged: (v){
                  // print("onChange:$v");
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "请输入密码",
                    prefixIcon: Icon(Icons.lock)
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 46.0,
                width: 300,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('登录'),
                  onPressed: (){
                    print(_unameController.text);
                  },
                ),
              )
            ],
          ),
        ),
      );
  }
}



class TextFieldWidget extends StatelessWidget{

  TextEditingController _unameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TextField组件')),
        body: Column(
          children: [
            TextField(
              autofocus: true,
              controller: _unameController,
              decoration: InputDecoration(
                hintText: "请输入用户名",
                prefixIcon: Icon(Icons.person)
              ),
              onChanged: (v){
                // print("onChange:$v");
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.lock)
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 46.0,
              width: 300,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('登录'),
                onPressed: (){
                  print(_unameController.text);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}