
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
      body: Container(
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(value['investername'].toString(),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                                //Applying companyname from the list of homepro imported from the main file
                                Padding(
                                  padding: const EdgeInsets.only(left:100,right: 10,top: 8),
                                  child: Text("- ${value['companyname'].toString()}",style: TextStyle(color: Colors.black,fontSize: 12,),),
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
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  height: 165,
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
                      Divider(thickness: 2,color: Colors.black,),
                      Padding(padding: EdgeInsets.all(0),
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
                                child:Text(
                                  value['companyinfo'].toString(),
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          )).toList(),
        ),
      ),
    );
  }
}
