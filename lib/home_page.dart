import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:rabo_sp/home_page.dart';
import 'package:rabo_sp/rabo_sp_login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rabo_sp/utils/routes.dart';
import 'package:rabo_sp/all_orders.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  // curly bracket == COMPULSARY

  @override
  Widget build(BuildContext context) {
    var d = 'bro';
    const k = 100;
    final ju = 'can be changed';
    return Scaffold(
      appBar: AppBar(
        title: Text('title 1'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(20.20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                ),

                child: Text('order page',
                style: TextStyle(color: Colors.white),),
                onPressed: () {
                Navigator.pushNamed(context, MyRoutes.orderRoute);
                },
              ),
            )
          ]




          ),
      ),
    );
  }
}
