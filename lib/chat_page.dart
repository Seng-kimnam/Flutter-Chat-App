import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/chat_bubble.dart';
import 'package:flutter_project/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          title: Text("Hi Yurin!"),
          actions: [
            IconButton(onPressed : () {
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
              child: ListView.builder( itemCount: 6, itemBuilder: (context,index) {

                return ChatBubble(
                    no: index+1,
                    alignment: (index+1)%2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
                    message : "Hello hi bye"
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
