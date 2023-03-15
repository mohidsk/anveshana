import 'package:flutter/material.dart';
import 'package:get/get.dart';
Widget Auth_Start(){
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 20,left: 40,right: 40),
            child: Container(
                height: 250,
                width: 600,
                child: Image(image: AssetImage('assets/images/auth_images/startup.png'),)
            )
            ,),
        Padding(padding: EdgeInsets.only(top: 5),
            child: Text("Anveshana",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        ),
      Padding(
        padding: const EdgeInsets.only(top: 60,left: 45,right: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height:50,
              width: 300,
              child: ElevatedButton(
                  onPressed:(){
                    Get.bottomSheet(
                      Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 90,left: 10,right: 10),
                          child: Row(
                            children: [
                                Container(
                                  height: 60,
                              width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade300,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: ElevatedButton(
                                    onPressed: null,
                                    child: Text("Signup",style: TextStyle(color: Colors.white),),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                    ),
                                  ),
                                ),
                            SizedBox(
                              width: 50,
                              height: 40,
                              child: VerticalDivider(
                                color: Colors.black45,
                                thickness: 1,
                              ),
                            ),
                              Container(
                                height: 60,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: ElevatedButton(
                                  onPressed: null,
                                  child: Text("Login",style: TextStyle(color: Colors.black),),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9))
                      )
                    );
                  },
                  child:Text('Investor',style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue.shade300) ,
                  ),
              ),
            ),
            SizedBox(height: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 90,child: Divider(color: Colors.black,thickness: 1.0,)),
                      Text('OR',style: TextStyle(color: Colors.blue.shade300),),
                      SizedBox(width:90,child: Divider(color: Colors.black,thickness: 1.0,))
                    ],
                  ),
                ),
            ),
            SizedBox(
              height: 50,
                width: 300,
              child: OutlinedButton(
                child: Text('StartUp',style: TextStyle(color: Colors.black),),
                onPressed:(){
                  Get.bottomSheet(
                      Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 90,left: 10,right: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade300,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: ElevatedButton(
                                  onPressed: null,
                                  child: Text("Signup",style: TextStyle(color: Colors.white),),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 40,
                                child: VerticalDivider(
                                  color: Colors.black45,
                                  thickness: 1,
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: ElevatedButton(
                                  onPressed: null,
                                  child: Text("Login",style: TextStyle(color: Colors.black),),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))
                      )
                  );
                },


              ),
            ),
            Text("Find your own Invester")
          ],
        ),
      ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 96,right: 100),
                child: Image(image: AssetImage('assets/images/auth_images/Blob_left.png'),height: 150,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 126,left: 44),
                child: Image(image: AssetImage('assets/images/auth_images/Blob_right.png'),height: 120,),
              ),
            ],
          ),


        ],
      ),
    ),

  );
}