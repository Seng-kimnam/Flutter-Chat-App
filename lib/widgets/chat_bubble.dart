import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_project/models/chat_message_entity.dart';

class ChatBubble  extends StatelessWidget {
  final ChatMessageEntity entity;
  final Alignment alignment;

  // parameterize constructor
  const ChatBubble({super.key ,
    required this.alignment ,
    required this.entity
  }) ;

  @override
  Widget build(BuildContext context) {
    // String {username } = entity.author;
    return Align(
      alignment: alignment,
      child: Container(
        // media query like css in web
        constraints: BoxConstraints(maxWidth:MediaQuery.of(context).size.width * 0.5 ),
        // width: ,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            // image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/login-icon-button-vector-illustration-isolated-white-background-126999474.jpg")),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12) ,
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(12)
              ),
              color: Colors.grey.shade400
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Text("${entity.id}"),
              Text(entity.text , style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
              ),
              if(entity.imageUrl != null )
                Image.network(
                  '${entity.imageUrl}',
                height: 100,
                  // width: 100,
                ),
              Text("sent by ${entity.author.userName} at ${entity.createdAt}", style: (
              const TextStyle(
                fontSize: 12
               )
              ),
              )
              // Drawer(backgroundColor: Colors.blueGrey,)
            ],

          )
      ),
    );
  }
}
