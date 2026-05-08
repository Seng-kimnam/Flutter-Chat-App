import 'package:flutter/material.dart';

class  ChatInput extends StatelessWidget {
  ChatInput({super.key}) ;

  final messageController = TextEditingController();

  void onSendMessage(){
    print(messageController.text);
  }
  @override
  Widget build(BuildContext context) {

    return  Container(
      height: 60,
      // padding: Padding(padding: ),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.vertical(top: Radius.circular(10)) ,
          color: Colors.black
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          IconButton(onPressed: () {},
              icon: Icon(Icons.add ,
                color: Colors.white)
          ),


          Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 1,
                textCapitalization: TextCapitalization.sentences,
                controller: messageController,
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type your message",
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
                ),
              )
          ),

          IconButton(onPressed: onSendMessage,
              icon: Icon(Icons.send ,
                color: Colors.white,)
          )
        ],
      ),
    );
  }
}
