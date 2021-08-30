import 'package:flutter/material.dart';

main()=>runApp(new TextWidget());

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Text 组件',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Text 组件')),
        body: Center(
          child: Column(
            children: [
              Text('默认样式'),
              Text(
                '红色,20号字体',
                style: TextStyle(
                color: const Color(0xffff0000),
                fontSize: 20,
              ),
              ),
              Text(
                '20号字体,中划线',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}