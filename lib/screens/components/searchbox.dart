import 'package:flutter/material.dart';
Widget Search_Box({navigation}){
  return  SizedBox(
      height: 45,
      width: 250,
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: navigation,
              child: Icon(

                Icons.search,
                color: Colors.black38,
              ),
            ),
            hintText: 'Search....',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Colors.black45)
            )
        ),
        style: TextStyle(fontSize: 15,height: 1.5),
        cursorColor: Colors.grey.shade500,
      ),
    );
}