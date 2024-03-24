import "package:flutter/material.dart";
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
        body: Center(
          child: Container(
            child: Text("welcome to 30 days of flutter  "),
          ),
        ),
        drawer: Drawer(),

      );
  }
}