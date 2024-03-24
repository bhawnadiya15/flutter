import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

// class LoginPage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Material(
//       child: Center(
//         child: Text(
//           "login page",
//           style: TextStyle(
//               fontSize: 20,
//               color: Colors.blueGrey,
//               fontWeight: FontWeight.bold),
//           //textScaleFactor: 2.0, acc to value like 2 double the etxt if 3 triple the text
//         ),
//       ),
//     );
//   }
// }
class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_Mobile_login_re_9ntv (1).png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(onPressed: () {print("hi bhawna");}, child: Text("login"), 
                style:TextButton.styleFrom(),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
