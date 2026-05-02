import 'package:flutter/material.dart';

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
        body: ListView(
          children: [
            Container(
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

                    Text("Hello Nham by nv o" , style: TextStyle(
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
            Container(
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

                    Text("Hello Nham by nv o" , style: TextStyle(
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
            Container(
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

                    Text("Hello Nham by nv o" , style: TextStyle(
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
            Container(
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

                    Text("Hello Nham by nv o" , style: TextStyle(
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

            Container(
              height: 40,

              decoration: BoxDecoration(
                borderRadius:BorderRadius.vertical(top: Radius.circular(10)) ,
                color: Colors.blueGrey
              ),
              child: Row(
                children: [
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.add , color: Colors.white,) ),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.send , color: Colors.white,) )
                ],
              ),
            )



          ],
        )

      ),
    );
  }
}
