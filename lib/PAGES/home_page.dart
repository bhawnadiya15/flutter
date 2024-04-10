import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "dart:convert";
import "package:onflutter/models/catalog.dart";
import "package:onflutter/widgets/drawer.dart";
import "package:onflutter/widgets/item_widget.dart";
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Bhawna";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async{
    await Future.delayed(Duration(seconds: 2));
   var json = await  rootBundle.loadString("assets/files/catalog.json");
   var decodeData = jsonDecode(json);
   var productData = decodeData["products"];
   CatalogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {
     
   });
  }
  Widget build(BuildContext context){
    //final dummyList = List.generate(50,(index)=>CatalogModel.items[0]);
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
        body:Padding(
          padding: const EdgeInsets.all(16.0),
      child:(CatalogModel.items != null && CatalogModel.items.isNotEmpty)? ListView.builder(

        itemCount: CatalogModel.items.length,//dummyList.length,
        itemBuilder: (context,index){
          return ItemWidget(
            item: CatalogModel.items[index],//dummyList[index],
          );
        },
        ):Center(
          child: CircularProgressIndicator(),
        ),
        ),
        drawer: myDrawer(),

      );
  }
}