

import 'package:anveshana/screens/Auth/auth_start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Profile_Img({image}){
  return
    //Profile image for home page of the Startup company
      CircleAvatar(
      backgroundImage: AssetImage(image),
      backgroundColor: Colors.black,
      radius: 20,
  );
}