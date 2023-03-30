import 'package:anveshana/models/startup_post.dart';
import 'package:anveshana/screens/HomePageScreens/HomePg.dart';
import 'package:anveshana/screens/components/searchbox.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/Appbar_profile.dart';


class Home_StartUp extends StatefulWidget {
  Home_StartUp({Key? key}) : super(key: key);

  @override
  State<Home_StartUp> createState() => _Home_StartUpState();
}

class _Home_StartUpState extends State<Home_StartUp> {
  int selectedindex = 0;
  int currentIndex = 0;
  PageController controller = PageController(initialPage: 0);
  List tabs=[
    HomeTab(),
   Center(child: Text('july'),),
   Center(child: Text('myBesti'),),
   Center(child: Text('Bestfriend'),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 4,
        elevation: 5,
        backgroundColor: Colors.white,
       title: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           //profile iamge is initialized here
           Padding(padding: EdgeInsets.only(right: 5),
               child: Profile_Img(image: 'assets/images/auth_images/kappu.png' )
           ),
           //Search box is intialized in this code
         Padding(
           padding: const EdgeInsets.only(right:0),
           child: Search_Box(navigation: null),
         ),
           Padding(padding: EdgeInsets.only(left: 3),
           child: InkWell(
             child: Icon(
               Icons.notifications,
               color: Colors.black,
               size: 30,
             ),
           ),
           )

         ],
       ),
      ),
      body:Center(
        child: tabs[selectedindex],
        ),
      bottomNavigationBar:FlashyTabBar(
        showElevation: true,
        selectedIndex: selectedindex,
        onItemSelected: (index){
          setState(() {
            selectedindex =index ;
          });

        },
        backgroundColor: Colors.white,
        height: 55,
        iconSize: 20,

        items: [
          FlashyTabBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            title: Text('Home',style: TextStyle(color: Colors.black),),
          ),

          FlashyTabBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/auth_images/startupic.png'),
              color: Colors.black,
            ),
            title: Text('StartUp',style: TextStyle(color: Colors.black),),
          ),
          FlashyTabBarItem(
              icon: Icon(
                Icons.add,size: 30,
                color: Colors.black,
              ),
              title: Text('Posts',style: TextStyle(color: Colors.black),),
          ),
          FlashyTabBarItem(
                icon: Icon(
                  Icons.chat_bubble,
                color: Colors.black,
              ),
              title: Text('Chat',style: TextStyle(color: Colors.black),),
          ),
        ],
      )
    );
  }
}
