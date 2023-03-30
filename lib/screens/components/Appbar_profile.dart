import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget Profile_Img({image}){
  return InkWell(
    onTap: (){
      Get.dialog(
        Padding(padding: EdgeInsets.only(left: 40,right: 20,top: 30,bottom: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40) )
          ),
        ),
        )
      );
    },
    child:  CircleAvatar(
      backgroundImage: AssetImage(image),
      backgroundColor: Colors.black,
      radius: 20,
    ),
  );
}