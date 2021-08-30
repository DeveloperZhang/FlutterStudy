import 'package:flutter/material.dart';

main()=>runApp(ScrollControllerPageWidget());

class ScrollControllerPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScrollControllerPageState();
  }
}

class ScrollControllerPageState extends State<ScrollControllerPageWidget> {

  ScrollController controller = ScrollController();
  bool showTopBtn = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      // print("controller.offset is ${controller.offset} ");
      if(controller.offset < 1000 && showTopBtn) {
        setState(() {
          showTopBtn = false;
        });
      }else if(controller.offset>=1000 && showTopBtn == false) {
        setState(() {
          showTopBtn = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScrollControllerPage Demo',
      home: Scaffold(
        appBar:AppBar(title: Text("ScrollControllerPage Demo")),
        body: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0,
            controller: controller,
            itemBuilder: (context ,index){
              return ListTile(title: Text('列表Item$index'));
            }
        ),
        floatingActionButton: !showTopBtn?null:FloatingActionButton(
            child: Icon(Icons.arrow_upward),
            onPressed: (){
              controller.animateTo(0, duration: Duration(microseconds: 2000), curve: Curves.easeInToLinear);
            }
        ),
      ),
    );
  }
}