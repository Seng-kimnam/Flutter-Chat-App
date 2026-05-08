import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/models/chat_message_entity.dart';
import 'package:flutter_project/widgets/chat_bubble.dart';
import 'package:flutter_project/widgets/chat_input.dart';
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {

  // final String loggedUsername;

  // final ChatMessageEntity entity;
  const ChatPage({super.key });

  @override
  State<ChatPage>  createState() => _ChatPage();


}
class _ChatPage extends State<ChatPage> {
  String textFromLocalRestAPI = "";
   List<ChatMessageEntity> stateMessages = [];

    Future<void>_loadInitialMessage () async  {
    final response = await rootBundle.loadString("assets/object/static_message.json");



    final decodedToDartObj = jsonDecode(response) as List;
    final finalListChatMessageObj = decodedToDartObj.map((item) => (
        ChatMessageEntity.fromJson(item as Map<String,dynamic>)
    )).toList();

    // print("deserialize json to object $finalListChatMessageObj");

    // return finalListChatMessageObj;
    setState(() {
      stateMessages = finalListChatMessageObj;
      // textFromLocalRestAPI = responsefromRestAPI.body;
    });
  }
  Future<void> _loadFromLocalAPI () async {
    Uri rawTextToUri =  Uri.parse('http://10.0.2.2:5106/Test');
    final  responsefromRestAPI = await http.get(rawTextToUri);

    print("Hello ${responsefromRestAPI.body}");
    // return responsefromRestAPI;
    setState(() {
      textFromLocalRestAPI = responsefromRestAPI.body;
    });
  }
  @override
  void initState() {

    super.initState();
    _loadInitialMessage();
    _loadFromLocalAPI();
  }

  @override
  Widget build(BuildContext context) {

    final loggedUsername = ModalRoute.of(context)!.settings.arguments as String;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: AppBarTheme(
          // backgroundColor: Colors.blueGrey,
          // foregroundColor: Colors.white,
          elevation: 0,
        ),
        // primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi $loggedUsername!" ),
          actions: [
            IconButton(onPressed : () {

              Navigator.pushReplacementNamed(context , "/");

              print("You're logged out your token is expired");

            },
                icon: Icon(Icons.logout))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              // fit: FlexFit.loose,
              // flex: 3,
              child: ListView.builder( itemCount: stateMessages.length, itemBuilder: (context,index) {

                return ChatBubble(
                    no: index+1,
                    alignment: stateMessages[index].author.userName != "Emma" ? Alignment.centerRight : Alignment.centerLeft,
                     entity : ChatMessageEntity(
                         id: stateMessages[index].id,
                         text:  stateMessages[index].text,
                         createdAt:  stateMessages[index].createdAt,
                       author: Author(userName:  stateMessages[index].author.userName + textFromLocalRestAPI )
                     )
                );
              }),
            ),
            ChatInput()

          ],
        )

      ),
    );
  }


}
