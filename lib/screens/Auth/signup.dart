

import 'package:anveshana/screens/Auth/login.dart';
import 'package:anveshana/screens/components/Appbar_profile.dart';
import 'package:anveshana/screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:google_fonts/google_fonts.dart';

class Sinup extends StatefulWidget {
  const Sinup({Key? key}) : super(key: key);

  @override
  State<Sinup> createState() => _SinupState();
}

class _SinupState extends State<Sinup> with TickerProviderStateMixin {
  late FlutterGifController Profile_gif ,Email_gif ,Password_gif ;

  @override
  Widget build(BuildContext context) {
    var StartUpUserName = TextEditingController();
    var StartUpPassword = TextEditingController();
    var StartUpEmail = TextEditingController();
    Profile_gif = FlutterGifController(vsync: this);
    Email_gif = FlutterGifController(vsync: this);
    Password_gif = FlutterGifController(vsync: this);
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
                child: Image(image: AssetImage('assets/images/auth_images/signup.png'),height: 270,),
                ),
                Padding(
                  padding: const EdgeInsets.only( right: 80,left: 80),
                  child: Container(
                    child: Column(
                      children: [
                        Text("Create New",style: GoogleFonts.lato(
                       textStyle:  TextStyle(fontSize: 33,fontWeight: FontWeight.w900),)
                        ),
                        Text("Account",style: GoogleFonts.lato(
                          textStyle:  TextStyle(fontSize: 33,fontWeight: FontWeight.w900),)
                        ),
                      ],
                    ),
                  ),

                ),
                Padding(padding: EdgeInsets.only(top: 5,left: 80,right: 80),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                          children:[
                            TextSpan(text: 'Already have an account?',style: TextStyle(
                              color: Colors.black
                            ),
                            ),
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                                },
                            )
    ]

                        ),
                    )
                  ],
                ),
                ),
               Padding(
                 padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Container(
                           height: 35,
                     width: 35,
                           child: GifImage(image: AssetImage('assets/images/auth_images/profile.gif'),
                               controller: Profile_gif,),
                         ),
                         SizedBox(width: 10,),
                         SizedBox(
                           height: 50,
                             width: 250,
                           child: TextField(
                             onTap: (){
                               Email_gif.stop();
                               Password_gif.stop();
                               Profile_gif.repeat(
                                 min: 0,
                                   max: 25,
                                reverse: true,
                                period: Duration(seconds: 1)
                               );
                             },
                             controller: StartUpUserName,
                             textAlign: TextAlign.justify,
                             textAlignVertical: TextAlignVertical.top,
                             keyboardType: TextInputType.name,
                             style: TextStyle(
                               fontSize: 18,
                             ),
                             decoration: InputDecoration(
                               labelText: "Username",
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
                               Profile_gif.stop();
                               Password_gif.stop();
                               Email_gif.repeat(
                                 min: 0,
                                 max: 25,
                                 reverse: true,
                                 period: Duration(seconds: 1)
                               );
                             },
                             controller: StartUpEmail,
                             textAlign: TextAlign.justify,
                               textAlignVertical: TextAlignVertical.top,
                             keyboardType: TextInputType.emailAddress,
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
                     SizedBox(height: 17,),
                     Row(
                       children: [
                         Container(
                           height: 35,
                           width: 35,
                           child: GifImage(image: AssetImage('assets/images/auth_images/password.gif'),
                             controller: Password_gif,),
                         ),
                         SizedBox(width: 10,),
                         SizedBox(
                           height: 50,
                           width: 250,
                           child: TextField(
                             onTap: (){
                               Profile_gif.stop();
                               Email_gif.stop();
                               Password_gif.repeat(
                                 min: 0,
                                 max: 25,
                                 reverse: true,
                                 period: Duration(seconds: 1)
                               );
                             },
                             controller: StartUpPassword,
                             obscureText: true,
                               textAlign: TextAlign.justify,
                               textAlignVertical: TextAlignVertical.top,
                               obscuringCharacter: '.',
                             style: TextStyle(
                               fontSize: 18
                             ),
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
                            FirebaseAuth.instance.
                            createUserWithEmailAndPassword(email: StartUpEmail.text, password: StartUpPassword.text).
                            then((value) {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_StartUp()));
                            }).onError((error, stackTrace) {
                              print('Error recived');
                            });
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
                      padding: const EdgeInsets.only(top: 1 ,right: 100),
                      child: Image(image: AssetImage('assets/images/auth_images/Blob_left.png'),height: 150,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 44),
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
