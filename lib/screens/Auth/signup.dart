import 'package:anveshana/screens/Auth/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sinup extends StatelessWidget {
  const Sinup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var User_Name = TextEditingController();
    var User_Pass = TextEditingController();
    var User_Email = TextEditingController();
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
                 padding: const EdgeInsets.only(top: 5,left: 30,right: 30),
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
                             controller: User_Name,
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
                             controller: User_Email,
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
                             controller: User_Pass,
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
                            print(User_Name);
                            print(User_Email);
                            print(User_Pass);
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
}
