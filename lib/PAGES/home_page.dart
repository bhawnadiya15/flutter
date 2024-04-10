import "package:flutter/material.dart";
import "package:onflutter/models/catalog.dart";
import "package:onflutter/widgets/drawer.dart";
import "package:onflutter/widgets/item_widget.dart";
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    final dummyList = List.generate(50,(index)=>CatalogModel.items[0]);
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Catalog app",style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
        // body: Center(
        //   child: Container(
        //     child: Text("welcome to 30 days of flutter  "),
        //   ),
        // ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context,index){
          return ItemWidget(
            item: dummyList[index],
          );
        }),
        drawer: myDrawer(),

      );
  }
}