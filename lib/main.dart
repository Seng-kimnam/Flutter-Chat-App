import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_project/chat_page.dart';
// import 'package:flutter_project/counter_stateful.dart';
import 'package:flutter_project/login_page.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const ChatApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
class ChatApp extends StatelessWidget{
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Chat App",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primaryColor:  Colors.green),
      home:LoginPage(),
      routes: {"/chat-page"  : (context) {
        return const ChatPage();
        }
      }

    );
    // throw UnimplementedError();
  }

}

