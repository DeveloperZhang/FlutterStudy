import 'package:flutter/material.dart';

main()=>runApp(FormWidget());

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormWidgetState();
  }
}

class FormWidgetState extends State<FormWidget> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // String _userName;
  // String _userPassword;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar:AppBar(title: Text("Form 组件")),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: '用户名',
                  icon: Icon(Icons.person)
                ),
                validator: (value){
                  if(value!.length <= 5) {
                    return '用户名必须大于5个字符';
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: '密码',
                    icon: Icon(Icons.lock)
                ),
                validator: (value){
                  if(value!.length <= 8) {
                    return '密码必须大于8个字符';
                  }
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(5.0),
                child: Text('登录'),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}