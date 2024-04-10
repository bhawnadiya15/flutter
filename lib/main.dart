// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:onflutter/PAGES/home_page.dart';
import 'package:onflutter/PAGES/login_page.dart';
import 'package:onflutter/utils/routes.dart';
import 'package:onflutter/widgets/themes.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme:theme.LightTheme(context),
      darkTheme: theme.darkTheme(context),
      
      //initialRoute: "/HomePage",
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => HomePage(),
        MyRoutes.HomeRoute:(context) => HomePage(),
        MyRoutes.LoginRoute:(context) => LoginPage(),
        
      },
    );
  }
}