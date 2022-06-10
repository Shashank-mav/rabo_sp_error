import 'dart:html';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:rabo_sp/utils/routes.dart';

class all_order extends StatefulWidget {
  const all_order({Key? key}) : super(key: key);

  @override
  State<all_order> createState() => _all_orderState();
}

class _all_orderState extends State<all_order> {
  var Order_id = 18746;
  String address = " A krishi vihar";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 224, 119),
      appBar: buildAppbar(),
    );

  }

  AppBar buildAppbar(){
    return AppBar(
      elevation: 0,
      title: Text("Orders"),

    );
  }




}

class order_list extends StatefulWidget {

  @override
  order_liststate createState() => order_liststate();

}

class order_liststate extends State<order_list>{
  int selectedIndex =0;

  List categories = ['All', 'Completed', 'Pending', 'canceled'];

@override

  Widget build(BuildContext context){

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 30,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Container(
          child: Text("hello"),
        )
      ),
    );
  }

}



