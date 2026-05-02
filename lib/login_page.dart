import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({Key ? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(primarySwatch:  Colors.yellow),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Chat App"),

        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print("Button is clicking");
        }),

        body: Column(
          children: [
            Center(
              child: Text("Let's sign you in!" , style: TextStyle(
            fontSize: 30,
            color: Colors.brown,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
                ),
                
              ),
              
            ),
            Center(
              child: Text("Welcome back! \n You've been missed!" , style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blueGrey
                ),
              ),

            ),
            // Image.network("https://thumbs.dreamstime.com/b/login-icon-button-vector-illustration-isolated-white-background-126999474.jpg"),
            Container(
              width: 500,
              height: 300,
              // child: FlutterLogo(),
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.cover,
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI9lRck6miglY0SZF_BZ_sK829yiNskgYRUg&s")
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(50)
              ),
              
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}