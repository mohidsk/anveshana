import 'package:anveshana/controllers/database_controller.dart';
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



  @override
  void initState() {
    super.initState();
    print("Started");
    //sendData();
  }

  var ref = FirebaseFirestore.instance
      .collection("startup")
      .snapshots();

  sendData() async{
    var check=0;
    try{
      await FirebaseFirestore.instance.collection("startup").doc().set({
        "Name":"xyx",
        "Age":20,
      });
      check=1;
    }catch(e){
      print(e.toString());
      print("cannot make it !!!");
    }
    if(check==1) print("Successull");
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: fetchData(),
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
              return Card(child: ListTile(title: Text(snapshot.data!.docs[index]['Name']),),);
            },
          );
        }

        return Container();

      }
  );
}
