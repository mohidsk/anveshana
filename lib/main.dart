import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Anveshana()
    );
  }
}
class Anveshana extends StatelessWidget {
  const Anveshana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: 750,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                height: 300,
                  width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  color: Colors.cyan
                ),
                child: Center(
                  child: Text("Anveshana To search an Invester"),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
