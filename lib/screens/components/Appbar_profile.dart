import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Profile_Img({image}){
  return InkWell(
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
                            child: Center(child: Text('Edit Profile',style: GoogleFonts.josefinSans(color: Colors.black,fontSize: 25),)),
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
                            child: Center(child: Text('Settings',style: GoogleFonts.josefinSans(color: Colors.black,fontSize: 25),)),
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
                            child: Center(child: Text('Costemer care',style: GoogleFonts.josefinSans(color: Colors.black,fontSize: 25),)),
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
                            child: Center(child: Text('Login Out',style: GoogleFonts.josefinSans(color: Colors.black,fontSize: 25),)),
                          ),
                        ),),
                    ],
                ),
              )

            ],
          ),
      );
    },
    //Profile image for home page of the Startup company
    child:  CircleAvatar(
      backgroundImage: AssetImage(image),
      backgroundColor: Colors.black,
      radius: 20,
    ),
  );
}