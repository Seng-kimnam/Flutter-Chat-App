import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Chat App",

      theme: ThemeData(primaryColor:  Colors.green),
      home:LoginPage()

    );
    throw UnimplementedError();
  }

}

class LoginPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Chat App",

      theme: ThemeData(primarySwatch:  Colors.yellow),
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print("Button is clicking");
        }),
        body: Text("Welcome to Our app Please login"),
      ),
    );
    throw UnimplementedError();
  }

}