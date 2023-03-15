import 'package:flutter/material.dart';

Widget Auth_Background({image}){
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 50,left: 40,right: 40),
            child: Container(
                height: 250,
                width: 600,
                child: Image(image: AssetImage('assets/images/auth_images/login.png'),height: 400,)
            )
            ,),
          //code here
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 262,right: 100),
                child: Image(image: AssetImage('assets/images/auth_images/Blob_left.png'),height: 150,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 292,left: 44),
                child: Image(image: AssetImage('assets/images/auth_images/Blob_right.png'),height: 120,),
              ),
            ],
          ),


        ],
      ),
    ),

  );
}