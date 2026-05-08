import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/chat_page.dart';
import 'package:flutter_project/utils/link_format.dart';
import 'package:flutter_project/utils/text_field_style.dart';
import 'package:flutter_project/widgets/login_text_field.dart';
import 'package:flutter_project/widgets/spaces.dart';
import 'package:social_media_buttons/social_media_button.dart';


class LoginPage extends StatelessWidget{
  LoginPage({Key? key}) : super(key:key);

  final usernameTxtEditingController = TextEditingController();
  final passwordTxtEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void onLogin(context){
      Navigator.pushReplacementNamed(context,"/chat-page", arguments: usernameTxtEditingController.text);
  }

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
        // floatingActionButton: FloatingActionButton(onPressed: () {
        //   print("Button is clicking");
        // }),

        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
              width: 200,
              height: 150,
              // child: FlutterLogo(),
              padding: EdgeInsets.all(50),
              // margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                
                image: DecorationImage(
                  // fit: BoxFit.cover,
                    image: AssetImage("assets/images/chat.jpg"),

                ),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),

            ),

            Container(
              margin: EdgeInsets.only(left: 40 , right: 40 ) ,

              // alignment: Alignment.,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.,
                children: [

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        LoginTextField(
                          inputTextFieldController: usernameTxtEditingController,

                          validator: (value) { // type string of callback function
                            if(value!=null && value.isNotEmpty && value.length < 5){
                              return "Your username should be more than 5 char";
                            }
                            else if(value!=null && value.isEmpty){
                              print("va ${value}");
                              return "Please type your username";
                            }
                            return null;
                          },
                          hintText: "Enter your username",
                          ),

                          // onChanged: (value) => (print(value)),                   ),
                        verticalSpacing(24),
                        LoginTextField(
                         hintText: "Enter your password",
                          inputTextFieldController: passwordTxtEditingController,
                          hasHidden: true,

                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(onPressed: (){
                    onLogin(context);
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,

                  ), child: Text("Login" , style: TextStyle(
                      color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // backgroundColor: Colors.green
                      ),

                    )

                  ),
                  // LinkFormat(
                  //   label: "Click here",
                  //   addressUrl: "https://bbu-ecommerce-ab6be.web.app",
                  //   throwMessage: "Error to Access this link",
                  //   url: ("https://bbu-ecommerce-ab6be.web.app"),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      SocialMediaButton.twitter(url: "https://bbu-ecommerce-ab6be.web.app/" , color: Colors.blue),
                      SocialMediaButton.linkedin(url: "https://www.linkedin.com/in/kimnam-seng-31595b2b8/", color: Colors.blue),
                      SocialMediaButton.facebook(url: "https://www.facebook.com/Leograzzy/", color: Colors.blue )

                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}