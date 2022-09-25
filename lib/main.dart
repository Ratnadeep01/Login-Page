import 'package:abcde/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/Homepage.dart';
import 'pages/Loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme:  ThemeData.dark(),
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily : GoogleFonts.lato().fontFamily
      ),
      initialRoute: MyRoutes.LoginRoutes,
      routes: {
        MyRoutes.HomeRoutes: (context) => Homepage(),
        MyRoutes.LoginRoutes: (context) => Loginpage()
      },

    );
  }
}
