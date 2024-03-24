import 'package:flutter/material.dart';
import 'package:onflutter/PAGES/home_page.dart';
import 'package:onflutter/PAGES/login_page.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        
        appBarTheme: AppBarTheme(
          color: Colors.green, // Specify color for app bar in dark theme
        ),
      
      ),
      //initialRoute: "/HomePage",
      routes: {
        "/":(context) => LoginPage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}