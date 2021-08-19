import 'package:flutter/material.dart';

void main() => runApp(new TapboxA());

class TapboxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    _TapboxAState _tapboxAState = _TapboxAState();
    return _tapboxAState;
  }
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;
  void _handleTap(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active?'Active':'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active? Colors.lightGreen[700]:Colors.grey[600],
        ),
      ),
    );
  }
}