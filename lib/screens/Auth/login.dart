import 'package:flutter/material.dart';
import 'auth_start.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var LoginName = TextEditingController();
  var LoginEmail = TextEditingController();
  var LoginPass = TextEditingController();
  var InLoginName = TextEditingController();
  var InLoginEmail = TextEditingController();
  var InLoginPass = TextEditingController();
  var StLoginName = TextEditingController();
  var StLoginEmail = TextEditingController();
  var StLoginPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                    Padding(padding: EdgeInsets.only(top: 5,left: 120,right: 120),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                children:[
                                  TextSpan(text: 'Sign in to continue',style: TextStyle(
                                      color: Colors.black
                                  ),
                                  ),
                                ]

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 30,right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ImageIcon(
                                  AssetImage('assets/images/auth_images/user.png')
                              ),
                              SizedBox(width: 10,),
                              SizedBox(
                                height: 45,
                                width: 250,
                                child: TextField(
                                  controller: LoginName,
                                  textAlign: TextAlign.justify,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
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
                              )
                            ],
                          ),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              ImageIcon(
                                  AssetImage('assets/images/auth_images/email.png')
                              ),
                              SizedBox(width: 10,),
                              SizedBox(
                                height: 45,
                                width: 250,
                                child: TextField(
                                  controller: LoginEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
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
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              ImageIcon(
                                  AssetImage('assets/images/auth_images/lock.png')
                              ),
                              SizedBox(width: 10,),
                              SizedBox(
                                height: 45,
                                width: 250,
                                child: TextField(
                                  controller: LoginPass,
                                  obscureText: true,
                                  obscuringCharacter: '.',
                                  decoration: InputDecoration(
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
                              )
                            ],
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
                                    },
                                  child:Text('SignUp',style: TextStyle(color: Colors.white),),
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
  void invORSt(){
  }
  }

