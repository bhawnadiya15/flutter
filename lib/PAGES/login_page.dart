import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "login page",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold),
          //textScaleFactor: 2.0, acc to value like 2 double the etxt if 3 triple the text
        ),
      ),
    );
  }
}
