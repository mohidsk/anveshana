import 'package:anveshana/controllers/database_controller.dart';
import 'package:anveshana/models/startup_post.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _stateExampleState();
}

// ignore: camel_case_types
class _stateExampleState extends State<HomePage> {

  var Post = post(
      StartUpName: "Raghu tech",
      Founder: "Hemanth Srinivas",
      CoFounder:"Vivek", TeamSize:4 ,
      StartUpDescription:"An app which helps ",
      USP: "Android Application",
      investment: 1000,
      Location:"Visakhapatanam",
      EstDate: "2022"
  );
  @override
  void initState() {
    super.initState();
    print("Started");
    createPost(Post);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border:Border.all(color: Colors.grey.shade300,width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child:Text("Anveshana",style: TextStyle(fontSize: 25),) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    border:Border.all(color: Colors.grey.shade300,width: 1),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(height: 8,),
        Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top:5),
                  //width: 395,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search ,color:Colors.grey,),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
                SizedBox(height: 10,),

                Container(
                  height: 600,
                  child: fetchData(),
                ),


              ],
            ),
          )
        ),
      ),
    );
  }
}






Widget fetchData(){
  return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("startup")
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
        if(snapshot.hasError){
          return Text("Something wrong");
        }
        if(snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child:CupertinoActivityIndicator(),
          );
        }
        if(snapshot.data!.docs.isEmpty){
          return Text("No Data found");
        }
        if(snapshot != null && snapshot.data != null){

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(bottom: 5),
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(

                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10,top:10),
                                child: Text(snapshot.data!.docs[index]['StartUpName'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                              ),
                              SizedBox(width: 90,),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(snapshot.data!.docs[index]['Investment'].toString() + " Rs"),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 0,),
                          Padding(padding: EdgeInsets.only(top:10,left:10),
                            child: Row(

                              children: [
                                Text("Founder",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 5,),
                                Container(
                                  alignment: Alignment.center,
                                  width: 50,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(snapshot.data!.docs[index]['Name'],style: TextStyle(fontSize: 12),),
                                )
                              ],
                            )
                          )

                        ],
                      ),
                    )
                  ],
                )


              );
            },
          );
        }

        return Container();

      }
  );
}

//Card(color:Colors.grey,child: ListTile(title: Text(snapshot.data!.docs[index]['Name']),),);


void createPost(Post) async{
  var check=0;
  try{
    await FirebaseFirestore.instance.collection("startup").doc().set({
      "StartUpName":Post.StartUpName,
      "Founder":Post.CoFounder,
      "CoFounder":Post.CoFounder,
      "StartUpDescription":Post.StartUpDescription,
      "USP":Post.USP,
      "Investment":Post.investment,
      "Location":Post.Location,
      "Established":Post.EstDate,
      "Name":"Bosdamon",
    });
    check=1;
  }catch(e){
    print(e.toString());
    print("cannot make it !!!");
  }
  if(check==1) print("Successull");
}