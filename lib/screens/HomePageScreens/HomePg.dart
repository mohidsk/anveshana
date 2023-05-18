
import 'package:anveshana/screens/Auth/auth_start.dart';
import 'package:anveshana/screens/components/Appbar_profile.dart';
import 'package:anveshana/screens/components/searchbox.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class HomeTab extends StatelessWidget {
   HomeTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 690,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 58,
                    width: 400,
                    color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:InkWell(
                            onTap: (){
                              //For profile dialog box of StartUp company
                              Get.dialog(
                                Stack(
                                  alignment: AlignmentDirectional.topStart,
                                  children: [
                                    Positioned(
                                      top: 45,
                                      left: 30,
                                      right: 30,
                                      child: Container(
                                        height: 500,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(40)
                                        ),
                                      ),
                                    ),
                                    //For profile pitcher of startUp company in dialog box
                                    Positioned(
                                      top: 22.5,
                                      left: 155,
                                      child: CircleAvatar(backgroundImage: AssetImage("assets/images/auth_images/kappu.png"),radius: 25,),
                                    ),
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(padding: EdgeInsets.only(left: 60,right: 60,bottom: 150),
                                            child: Material(
                                              color: Colors.white,
                                              child: Container(
                                                width: 250,
                                                decoration: BoxDecoration(
                                                    border: Border(bottom: BorderSide(color: Colors.black))
                                                ),
                                                child: Center(child: Text('Vishu',style: GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 35),)),
                                              ),
                                            ),),
                                          Padding(padding: EdgeInsets.only(left: 60,right: 60,bottom:  40),
                                            child: Material(
                                              color: Colors.white,
                                              child: InkWell(
                                                child: Container(
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                      border: Border(bottom: BorderSide(color: Colors.black))
                                                  ),
                                                  child: Center(child: Text('Profile',
                                                    style: GoogleFonts.josefinSans(color: Colors.black,fontSize: 25),
                                                    textAlign: TextAlign.justify,)
                                                  ),
                                                ),
                                              ),
                                            ),),
                                          Padding(padding: EdgeInsets.only(left: 60,right: 60,bottom: 40),
                                            child: Material(
                                              color: Colors.white,
                                              child: Container(
                                                width: 250,
                                                decoration: BoxDecoration(
                                                    border: Border(bottom: BorderSide(color: Colors.black))
                                                ),
                                                child: Center(child: Text('Settings',
                                                  style: GoogleFonts.josefinSans(color: Colors.black,fontSize: 25),
                                                textAlign: TextAlign.justify,
                                                )
                                                ),
                                              ),
                                            ),),
                                          Padding(padding: EdgeInsets.only(left: 60,right: 60,bottom: 40),
                                            child: Material(
                                              color: Colors.white,
                                              child: Container(
                                                width: 250,
                                                decoration: BoxDecoration(
                                                    border: Border(bottom: BorderSide(color: Colors.black))
                                                ),
                                                child: Center(child: Text('Costemer care',
                                                  style: GoogleFonts.josefinSans(color: Colors.black,fontSize: 25),
                                                textAlign: TextAlign.justify,
                                                )
                                                ),
                                              ),
                                            ),),
                                          Padding(padding: EdgeInsets.only(left: 60,right: 60,bottom: 150),
                                            child: Material(
                                              color: Colors.white,
                                                child: Container(
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                      border: Border(bottom: BorderSide(color: Colors.black))
                                                  ),
                                                  child: InkWell(
                                                    onTap: (){
                                                        FirebaseAuth.instance.signOut().then((value) {
                                                          Navigator.push(context,
                                                              MaterialPageRoute(builder: (context)=>Auth_Start()));
                                                        });
                                                    },
                                                      child: Center(
                                                          child: Text('Login Out',
                                                            style: GoogleFonts.josefinSans(color: Colors.black,
                                                                fontSize: 25),
                                                            textAlign: TextAlign.justify,
                                                          )
                                                      )
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              );
                            },
                            child: Profile_Img(image: "assets/images/auth_images/kappu.png")
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Search_Box(navigation: null),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: InkWell(child: Icon(Icons.notifications,size: 35,)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 627,
   width: 360,
   color: Colors.white70,
                  //For scrollable conteainers witch contains information of the investers
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    //Creating a containers which contains the information of the company
                    children: homepro.map((value) => Padding(

                      padding: const EdgeInsets.only(left: 0.1,right: 0.1),
                      child: InkWell(
                        onTap: (){
                          //dialog box for the more info of the company
                         Get.dialog(
                           Padding(
                                padding: EdgeInsets.only(right: 20,left: 20,top: 150,bottom: 150),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  //here intilized the size of the information dialog  box
                                  child: Container(
                                     height: 10,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    //column is to display the information in the form of vertical blocks
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          //applying investername from the list imported by the main file
                                        Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(padding: EdgeInsets.only(right: 40),
                                              child: CircleAvatar(backgroundColor: Colors.blue.shade300,
                                                  backgroundImage: AssetImage(value['profileimg'].toString()),radius: 24,),),
                                              Padding(padding: EdgeInsets.all(0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 15),
                                                      child: Text(value['investername'].toString(),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                                    ),
                                                    //Applying companyname from the list of homepro imported from the main file
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:100,right: 10,top: 8),
                                                      child: Text("- ${value['companyname'].toString()}",style: TextStyle(color: Colors.black,fontSize: 12,),),
                                                    ),
                                                  ],
                                              ))
                                            ],
                                        ),
                                          //Sizedbox for the horizontal line to divide
                                          SizedBox(
                                            height: 30,
                                            width: 270,
                                              child: Divider(thickness: 1,color: Colors.black,),
                                          ),
                                          //sizedbox is to show the information in dilogbox
                                          SizedBox(
                                            height: 300,
                                            child: SingleChildScrollView(
                                              child: Padding(padding: EdgeInsets.all(20),
                                              child: Text(value["companyinfo"].toString(),style: GoogleFonts.montserrat(color: Colors.black,fontSize: 14),),
                                              ),
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.only(top: 20,left: 190,bottom: 5),
                                          //container for the button of the requset
                                            child:Container(
                                            height: 35,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade300,
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            //for the button
                                            child: ElevatedButton(
                                              onPressed: null,
                                              child: Text("Request",style: TextStyle(color: Colors.white),),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15)
                                                )

                                              ),
                                            ),
                                          ),
                                          )


                                        ],
                                    ),
                                   ),
                                ),
                              ),
                         );
                         },
                        //here the block of the invester was desgined
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 9,
                          shadowColor: Colors.black,
                          child: Container(
                            height: 168,
                              width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top: 5,left: 8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //here code for the profiel image of the invester
                                      Padding(padding: EdgeInsets.all(5),
                                      child: CircleAvatar(
                                        //image was takes by the list of homepro imported from the main file
                                        backgroundImage: AssetImage(value['profileimg'].toString()),
                                      backgroundColor: Colors.blue.shade300,
                                        radius: 25,
                                      ),
                                      ),
                                      //Here the name of the invester was taken by list of homepro imported from the main file
                                      Padding(padding: EdgeInsets.only(left: 50),
                                      child: Text(value['investername'].toString(),style: TextStyle(
                                        fontSize: 20,color: Colors.black
                                      ),),
                                      )
                                    ],
                                ),
                                ),
                                 Divider(thickness: 1,color: Colors.black45),
                                Padding(padding: EdgeInsets.all(0),
                                child: Card(
                                  elevation: 1 ,
                                  shadowColor: Colors.black,
                                  child: Container(
                                    height: 79,
                                    width: 400,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          //Here the name of the company was taken from the list of homepro imported form the main.dart file
                                          Padding(padding: EdgeInsets.all(5),
                                          child: Text(value['companyname'].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize:20
                                          ),),),
                                          //sizedbox for the horizontal line the divize the companyname and companyinfo
                                          SizedBox(
                                            width: 300,
                                            child: Divider(thickness: 1,),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0,),
                                            child: SizedBox(
                                              height: 30,
                                              width: 330,
                                              //Here company information was taken from the list of the homepro imported from the main.dart
                                              child:Text("${value['companyinfo'].toString()}",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                                maxLines: 1,
                                              )
                                            ),
                                          )
                                        ],
                                    ),
                                  ),
                                ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
