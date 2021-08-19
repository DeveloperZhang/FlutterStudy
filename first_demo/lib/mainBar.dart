import 'package:flutter/material.dart';

void main() {
  runApp(AppBarSample());
}

class AppBarSample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Basic AppBar'),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(onPressed: (){}, icon: new Icon(choices[0].icon)),
            new IconButton(onPressed: (){}, icon: new Icon(choices[1].icon)),
            new PopupMenuButton(itemBuilder: (BuildContext context){
              return choices.skip(2).map((Choice choice){
                return new PopupMenuItem<Choice>(value: choice,child: new Text(choice.title),);
              }).toList();
            }),
          ],
        ),
        body: new Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Text('AppBar!'),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({
    required this.title,required this.icon
  });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const<Choice>[
  const Choice(title: 'Car',icon: Icons.directions_car),
  const Choice(title: 'Bicycle',icon: Icons.directions_bike),
  const Choice(title: 'Boat',icon: Icons.directions_boat),
];