import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_project/models/chat_message_entity.dart';

class  ChatInput extends StatelessWidget {
  final Function(ChatMessageEntity) onSubmit;
  const ChatInput({super.key , required this.onSubmit }) ;


  @override
  Widget build(BuildContext context) {

    final messageController = TextEditingController();
    final random = Random(9999);
     handleSubmit(){
      final newChatMessage = ChatMessageEntity(id: random.nextInt(1000) ,
          text: messageController.text,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          author: Author(userName: "Emma")
      );
      onSubmit(newChatMessage);
    }
    return  Container(
      height: 60,
      // padding: Padding(padding: ),
      decoration: const BoxDecoration(
          borderRadius:BorderRadius.vertical(top: Radius.circular(10)) ,
          color: Colors.black
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          IconButton(onPressed: () {},
              icon: const Icon(Icons.add ,
                color: Colors.white)
          ),
          Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 1,
                textCapitalization: TextCapitalization.sentences,
                controller: messageController,
                style: const TextStyle(
                  color: Colors.white
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type your message",
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
                ),
              )
          ),

          IconButton(onPressed: handleSubmit,
              icon: const Icon(Icons.send ,
                color: Colors.white,)
          )
        ],
      ),
    );
  }
}
