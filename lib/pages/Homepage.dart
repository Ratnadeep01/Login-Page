import 'package:flutter/material.dart';

import '../utils/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Developers_inside",
          style: TextStyle(
            fontStyle: FontStyle.italic
          ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Welcome to Flutter', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.blue
              ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Flutter is a cross-platform based framework which is useful for android, web as well as ios development.',
            style: TextStyle(
              fontSize: 16,

            ),)
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
