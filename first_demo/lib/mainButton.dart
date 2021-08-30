import 'package:flutter/material.dart';

void main()=>runApp(ButtonWidget());

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Button组件'),),
        body: Center(
          child: Column(
            children: [
              FlatButton(onPressed: ()=>print('FlatButton pressed'), child: Text('Flat')),
              FlatButton(onPressed: ()=>print('FlatButton pressed'),
                child: Text('Submit'),color: Colors.blue,colorBrightness: Brightness.dark,
                splashColor: Colors.grey,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
              RaisedButton(onPressed: ()=>print('RaisedButton pressed'), child: Text('Raised')),
              RaisedButton.icon(onPressed: ()=>print('IconButton pressed'), icon: Icon(Icons.send), label: Text('发送')),
              RaisedButton(onPressed: ()=>print('FlatButton pressed'),
                child: Text('Submit'),color: Colors.blue,colorBrightness: Brightness.dark,
                splashColor: Colors.grey,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
              FloatingActionButton(onPressed: ()=>print('FloatingActionButton pressed'), child: Text('Float'),),
              OutlineButton(onPressed: ()=>print('OutlineButton pressed'), child: Text('Outline'),),
              IconButton(onPressed: ()=>print('IconButton pressed'), icon: Icon(Icons.thumb_up))
            ],
          ),
        ),
      ),
    );
  }
}