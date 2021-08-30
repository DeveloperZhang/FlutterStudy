import 'dart:io';

import 'package:flutter/material.dart';

main()=>runApp(ImageWidget());

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    icons += "\uE914";
    icons += "\uE000";
    icons += "\uE90D";

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home:Scaffold(
       appBar:AppBar(title: Text('图片组件'),),
       body: Center(
         child: Column(
           children: [
             Image.asset("assets/tableview_loading.png"),
             Image.file(File('/storage/flutter.png')),
             Text(icons,
               style: TextStyle(
                 fontFamily: "MaterialIcons",
                 fontSize: 24.0,
                 color: Colors.green
               ),
             )
           ],
         ),
       ),
      )
    );
  }
}