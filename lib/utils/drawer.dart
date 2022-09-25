import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text('Ratnadeep Saha'),
                  accountEmail: Text('ratnadeepsaha2013@gmail.com'),
                  margin: EdgeInsets.zero,
                  currentAccountPicture: Container(height: 70,
                  width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                        child: Image.asset('assets/images/profile_img.jpg', fit: BoxFit.cover,)),
                  ),
                  ),

                ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text('My Profile', style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text('Mail me', style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
          ],
        ),
      ),

    );
  }
}
