import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    final imageUrl = "https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 49, 126, 161),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Color.fromARGB(255, 49, 124, 159)),
                accountName: Text("bhawna Raheja"),
                accountEmail: Text("bhawnadiya@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color:Colors.white
              ),
              title: Text("Home",style: TextStyle(
                color: Colors.white
              ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color:Colors.white
              ),
              title: Text("Profile",style: TextStyle(
                color: Colors.white
              ),
              ),
            ),ListTile(
              leading: Icon(CupertinoIcons.mail,color:Colors.white
              ),
              title: Text("E-mail",style: TextStyle(
                color: Colors.white
              ),
              ),
            )

            
          ],
        ),
      ),
    );
  }
}
