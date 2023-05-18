import 'package:anveshana/screens/Auth/signup.dart';
import 'package:anveshana/screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'auth_start.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anveshana/controllers/auth_controller.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    var StartUpEmail = TextEditingController();
    var StartUpPassword = TextEditingController();
    late FlutterGifController Email_gif = FlutterGifController(vsync: this);
    late FlutterGifController Password_gif = FlutterGifController(vsync: this);
    return Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            height: 800,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10,left: 40,right: 40),
                      child: Image(image: AssetImage('assets/images/auth_images/login.png'),height: 270,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( right: 135,left: 135),
                      child: Container(
                        child:  Text("Login",style: GoogleFonts.lato(
                          textStyle:  TextStyle(fontSize: 33,fontWeight: FontWeight.w900),)
                        ),
                      ),

                    ),
                    Padding(padding: EdgeInsets.only(top: 5,left: 90),
                      child: Row(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                children:[
                                  TextSpan(text: "Don't have an Account,",style: TextStyle(
                                      color: Colors.black,
                                    fontSize: 16
                                  ),
                                  ),
                                  TextSpan(text:"SignUp",
                                  style: TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()..onTap = (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sinup()));
                                  })
                                ]

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 25,right: 30,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                child: GifImage(image: AssetImage('assets/images/auth_images/email.gif'),
                                  controller: Email_gif,),
                              ),
                              SizedBox(width: 10,),
                              SizedBox(
                                height: 50,
                                width: 250,
                                child: TextField(
                                  onTap: (){
                                    Password_gif.stop();
                                    Email_gif.repeat(
                                      min: 0,
                                      max: 25,
                                      reverse: true,
                                      period: Duration(seconds: 1),
                                    );
                                  },
                                  controller: StartUpEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  textAlign: TextAlign.justify,
                                    textAlignVertical: TextAlignVertical.top,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  decoration: InputDecoration(
                                      labelText: "Email",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100))
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100)),
                                          borderSide: BorderSide(color: Colors.blue.shade300)
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(100),
                                          borderSide: BorderSide(color: Colors.black)
                                      )

                                  ),

                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2,right: 2,top: 14),
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  child: GifImage(image: AssetImage('assets/images/auth_images/password.gif'),
                                    controller: Password_gif,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 250,
                                    child: TextField(
                                      onTap: (){
                                        Email_gif.stop();
                                        Password_gif.repeat(
                                          min: 0,
                                          max: 25,
                                          reverse: true,
                                          period: Duration(seconds: 1)
                                        );
                                      },
                                      controller: StartUpPassword,
                                      textAlign: TextAlign.start,
                                      textAlignVertical: TextAlignVertical.top,
                                      obscureText: true,
                                      obscuringCharacter: '.',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w100
                                      ),
                                      cursorColor: Colors.blue,
                                      decoration: InputDecoration(
                                        labelText: "Password",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(100))
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(100)),
                                              borderSide: BorderSide(color: Colors.blue.shade300)
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(100),
                                              borderSide: BorderSide(color: Colors.black)
                                          )

                                      ),

                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 95,right: 95),
                            child: Container(
                              height:35,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue.shade300,
                              ),
                              child: ElevatedButton(
                                  onPressed: (){
                                    FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                        email: StartUpEmail.text, password: StartUpPassword.text).then((value) {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_StartUp()));
                                    }).onError((error, stackTrace) {
                                      print("Error occoured");
                                    });
                                    },
                                  child:Text('LogIn',style: TextStyle(color: Colors.white),),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(100)
                                      )
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6 ,right: 100),
                          child: Image(image: AssetImage('assets/images/auth_images/Blob_left.png'),height: 150,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 36,left: 44),
                          child: Image(image: AssetImage('assets/images/auth_images/Blob_right.png'),height: 120,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
  }

  }

