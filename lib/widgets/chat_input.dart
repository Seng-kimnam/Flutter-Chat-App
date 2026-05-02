import 'package:flutter/material.dart';
class  ChatInput extends StatelessWidget {
  const ChatInput({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      // padding: Padding(padding: ),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.vertical(top: Radius.circular(10)) ,
          color: Colors.blueGrey
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          IconButton(onPressed: () {

          }, icon: Icon(Icons.add , color: Colors.white,) ),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.send , color: Colors.white,) )
        ],
      ),
    );
  }
}
