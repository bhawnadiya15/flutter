import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:onflutter/utils/routes.dart";

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
class LoginPage extends StatefulWidget {
  @override

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    String name = "";
    bool changedButton = false;
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {
                        
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  
                  InkWell(
                    onTap: ()async{
                      setState(() {
                     changedButton  = true;

                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    child: AnimatedContainer(duration: Duration(seconds: 1),
                   width:changedButton?50: 150,
                   height: 50,
                   
                   alignment: Alignment.center,
                   child: changedButton?Icon(
                    Icons.done,
                    color: Colors.white,)
                   :Text("login",
                   style: TextStyle(
                    color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 30),
                   ),
                   decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(changedButton?50:8),
                   ),
                    ),

                    )
                
                  
            
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  //   },
                  //   child: Text("login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
