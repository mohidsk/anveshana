
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
        child: ListView(
          scrollDirection: Axis.vertical,
          children: homepro.map((value) => Padding(

            padding: const EdgeInsets.only(left: 0.1,right: 0.1),
            child: InkWell(
              onTap: (){
               Get.dialog(
                 Padding(
                      padding: EdgeInsets.only(right: 20,left: 20,top: 150,bottom: 150),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                           height: 10,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(value['companyname'].toString(),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:100,right: 10,top: 8),
                                  child: Text("- ${value['companyname'].toString()}",style: TextStyle(color: Colors.black,fontSize: 12,),),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 270,
                                    child: Divider(thickness: 1,color: Colors.black,),
                                ),
                                SizedBox(
                                  height: 300,
                                  child: SingleChildScrollView(
                                    child: Padding(padding: EdgeInsets.all(20),
                                    child: Text(value["companyinfo"].toString(),style: GoogleFonts.montserrat(color: Colors.black,fontSize: 14)),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20,left: 190,bottom: 5),
                                child:Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade300,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
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
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 4,
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
                            Padding(padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(value['profileimg'].toString()),
                            backgroundColor: Colors.blue.shade300,
                              radius: 25,
                            ),
                            ),
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
                            Padding(padding: EdgeInsets.all(5),
                            child: Text(value['companyname'].toString(),style: TextStyle(
                              color: Colors.black,
                              fontSize:20
                            ),),),
                            SizedBox(
                              width: 300,
                              child: Divider(thickness: 1,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,),
                              child: SizedBox(
                                height: 30,
                                width: 330,
                                child: Text(value['companyinfo'].toString(),style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                  ),
                                  maxLines: 2,),
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
