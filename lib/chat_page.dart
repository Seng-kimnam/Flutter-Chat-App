import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/models/chat_message_entity.dart';
import 'package:flutter_project/models/pixel_ford_image.dart';
import 'package:flutter_project/repo/image_repository.dart';
import 'package:flutter_project/widgets/chat_bubble.dart';
import 'package:flutter_project/widgets/chat_input.dart';
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {
  // final String loggedUsername;

  // final ChatMessageEntity entity;
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  String textFromLocalRestAPI = "";
  List<ChatMessageEntity> stateMessages = [];
  List<PixelFordImage> imageList = [];
  final ImageRepository _imgeRepo = ImageRepository();
  Future<void> _loadInitialMessage() async {
    final response =
        await rootBundle.loadString("assets/object/static_message.json");
    final decodedToDartObj = jsonDecode(response) as List;
    final finalListChatMessageObj = decodedToDartObj.map((item) {
      return ChatMessageEntity.fromJson(item as Map<String, dynamic>);
    }).toList();

    // print("deserialize json to object $finalListChatMessageObj");

    // return finalListChatMessageObj;
    if (!mounted) return;

    setState(() {
      stateMessages = finalListChatMessageObj;
      // textFromLocalRestAPI = responsefromRestAPI.body;
    });
  }

  void _onAddMessage(ChatMessageEntity newMessage) {
    stateMessages.add(newMessage);
    setState(() {});
  }

  // Future<void> _loadFromLocalAPI () async {
  //   Uri rawTextToUri =  Uri.parse('http://10.0.2.2:5193/api/v1/user');
  //   final  responsefromRestAPI = await http.get(rawTextToUri);
  //
  //   print(" ${responsefromRestAPI.body}");
  //   // return responsefromRestAPI;
  //   setState(() {
  //     textFromLocalRestAPI = responsefromRestAPI.body;
  //   });
  // }


  @override
  void initState() {
    super.initState();
    _loadInitialMessage();
    _imgeRepo.getNetworkImageList();
    // _loadFromLocalAPI();
  }

  @override
  Widget build(BuildContext context) {
    final loggedUsername = ModalRoute.of(context)!.settings.arguments as String;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),

        // primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi $loggedUsername!"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/");

                print("You're logged out your token is expired");
              },
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: Column(
          children: [

            if (imageList.isNotEmpty)
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    final pixelFordImage = imageList[index];

                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.network(
                            pixelFordImage.urlSmallSize,
                            width: 100,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              pixelFordImage.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            Expanded(
              // fit: FlexFit.loose,
              // flex: 3,
              child: ListView.builder(
                itemCount: stateMessages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    alignment: stateMessages[index].author.userName != "Emma"
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    entity: ChatMessageEntity(
                      id: stateMessages[index].id,
                      text: stateMessages[index].text,
                      createdAt: stateMessages[index].createdAt,
                      author: Author(
                        userName: stateMessages[index].author.userName,
                      ),
                    ),
                  );
                },
              ),
            ),
            ChatInput(onSubmit: _onAddMessage)
          ],
        ),
      ),
    );
  }
}
