import 'package:flutter/material.dart';
import 'package:rabo_sp/home_page.dart';
import 'package:rabo_sp/rabo_sp_login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rabo_sp/utils/routes.dart';
import 'package:rabo_sp/all_orders.dart';

void main() {
  runApp(rabo_sp_login());
}

class rabo_sp_login extends StatelessWidget {
  const rabo_sp_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: homePage(),
      themeMode:ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme:GoogleFonts.latoTextTheme(),

      ),
      // darkTheme: ThemeData(
      //   // brightness:Brightness.dark,
      //   primarySwatch: Colors.deepOrange
      // ),

      routes:{
        "/":(context) => LoginPage(),
        MyRoutes.orderRoute:(context) => all_order(),
        MyRoutes.homeRoute:(context) => homePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      } ,

    );
  }
}
