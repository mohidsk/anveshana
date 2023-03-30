import 'package:anveshana/screens/Auth/auth_start.dart';
import 'package:anveshana/screens/Auth/signup.dart';
import 'package:anveshana/screens/HomePageScreens/HomePg.dart';
import 'package:anveshana/screens/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

var homepro =[
  {
    'profileimg':'assets/images/auth_images/dev.png',
    'investername':'Devi Shenker',
    'companyname' : 'Dev vishu Company',
    'companyinfo' : "You can easily find detailed company information and research on MarketResearch.com, where we provide thousands of company reports across every major industry around the globe. These company reports are produced by a variety of market research companies, bringing you important information in a quick-to-read downloadable PDF format.SHere are seven popular market research firms featured on our website that produce company reports. If you already have a specific company in mind that you’d like to research, you can type the company’s name into the search bar on our homepage to pull up immediate results."
  },
  {
    'profileimg':'assets/images/auth_images/hems.jpg',
    'investername':'Hemanth',
    'companyname' : 'Him.inc',
    'companyinfo' : "kjhdsihoihsroighjgoihjoihhhh hdsfghiohoih sdhpughos hsduihoisd sdhgf[uiohasd sdghtuiphsdf sdguhguisdfghhsdho "
  },
  {
    'profileimg':'assets/images/auth_images/mohid.png',
    'investername':'mr_life_racer__',
    'companyname' : 'sm.inc',
    'companyinfo' : "kjhdsihoihsroighjgoihjoihhhh hdsfghiohoih sdhpughos hsduihoisd sdhgf[uiohasd sdghtuiphsdf sdguhguisdfghhsdho "
  },
  {
    'profileimg':'assets/images/auth_images/dev.png',
    'investername':'Devi Shenker',
    'companyname' : 'Dev vishu Company',
    'companyinfo' : "kjhdsihoihsroighjgoihjoihhhh hdsfghiohoih sdhpughos hsduihoisd sdhgf[uiohasd sdghtuiphsdf sdguhguisdfghhsdho "
  },
  {
    'profileimg':'assets/images/auth_images/dev.png',
    'investername':'Devi Shenker',
    'companyname' : 'Dev vishu Company',
    'companyinfo' : "kjhdsihoihsroighjgoihjoihhhh hdsfghiohoih sdhpughos hsduihoisd sdhgf[uiohasd sdghtuiphsdf sdguhguisdfghhsdho "
  },
  {
    'profileimg':'assets/images/auth_images/dev.png',
    'investername':'Devi Shenker',
    'companyname' : 'Dev vishu Company',
    'companyinfo' : "kjhdsihoihsroighjgoihjoihhhh hdsfghiohoih sdhpughos hsduihoisd sdhgf[uiohasd sdghtuiphsdf sdguhguisdfghhsdho "
  },


];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
    //purna
      // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // Sadiq
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r"hi in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home: Home_StartUp(),
    );
  }
}

