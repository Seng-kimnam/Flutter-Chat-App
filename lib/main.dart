import 'package:flutter/material.dart';
import 'package:flutter_project/chat_page.dart';
import 'package:flutter_project/login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Chat App",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primaryColor:  Colors.green),
      home:ChatPage()

    );
    // throw UnimplementedError();
  }

}

