import 'package:flutter/material.dart';
import 'package:onflutter/PAGES/home_page.dart';
import 'package:onflutter/PAGES/login_page.dart';
import 'package:onflutter/utils/routes.dart';
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
          color: Color.fromARGB(255, 116, 209, 228), // Specify color for app bar in dark theme
        ),
      
      ),
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