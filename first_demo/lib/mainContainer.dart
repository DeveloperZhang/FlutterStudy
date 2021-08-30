import 'package:flutter/material.dart';

main()=>runApp(ContainerWidget());

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter 容器组件',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter容器组件')),
        body: Container(
          margin: EdgeInsets.only(top: 30.0, left: 120.0),
          constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.red, Colors.orange],
              center: Alignment.topLeft,
              radius: .98
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0
              )
            ]
          ),
          transform: Matrix4.rotationZ(.2),
          alignment: Alignment.center,
          child: Text(
            "5.20",style: TextStyle(color: Colors.white,fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}