import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15,left: 5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/auth_images/user.png'),
                        radius: 45,
                      ),
                      SizedBox(height: 27,),
                      Text('Beenstooks',style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 20
                          ),),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 30),
                  child: Container(
                    height: 140,
                      width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Column(
                            children: [
                              SizedBox(
                                width: 150,
                                child: Text(
                                  textAlign: TextAlign.left,
                                  'Beenstooks',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  textAlign: TextAlign.left,
                                  'Beenstooks',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  textAlign: TextAlign.left,
                                  'Beenstooks',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  textAlign: TextAlign.left,
                                  'Beenstooks',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          Padding(padding: EdgeInsets.only(top: 10,left: 30,right: 30),
          child: SizedBox(height: 30,
              width: 300,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Edit Profile"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54
              ),
            ),
          ),
          ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,
                  width: 340,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20,left: 30),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                              width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('500',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5),
                          child: Text('Likes',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20,left: 130),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('500',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5),
                              child: Text('Likes',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
