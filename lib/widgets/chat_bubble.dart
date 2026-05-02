import 'dart:ffi';

import 'package:flutter/material.dart';

class ChatBubble  extends StatelessWidget {
  final Alignment alignment;
  final String message;
  final int no;
  // parameterize constructor
  const ChatBubble({super.key ,required this.alignment ,required this.message , required this.no}) ;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            // image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/login-icon-button-vector-illustration-isolated-white-background-126999474.jpg")),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12) ,
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(12)
              ),
              color: Colors.grey
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("$no"),
              Text("$message" , style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
              ),
              Image.network(
                "https://thumbs.dreamstime.com/b/login-icon-button-vector-illustration-isolated-white-background-126999474.jpg" ,
                height: 100,
              ),

              // Drawer(backgroundColor: Colors.blueGrey,)
            ],

          )
      ),
    );
  }
}
