import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:rabo_sp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// _ means private
class _LoginPageState extends State<LoginPage> {
  get child => null;

  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEBFFFA),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 280,
                width: 300,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.green, letterSpacing: .5, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 50.0),
                child: Column(
                  children: [
                    new TextFormField(
                      // ignore: unnecessary_new
                      decoration: new InputDecoration(
                        labelText: "Enter Email",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (value) {
                        if (value?.length == 0) {
                          return "Email cannot be empty";
                        }

                        else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        labelText: "Enter Password",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (value) {
                        if (value?.length == 0) {
                          return "Password cannot be empty";
                        }
                        else if (value!.length<6) {
                          return "Password length should be atleast 6";
                        }
                        else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    Material(
                      color: Color(0xff00C897),
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          // conditional statement
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,

                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                      ),
                    )

                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: ElevatedButton.styleFrom(
                    //       minimumSize: Size(150, 48),
                    //       primary: Color(0xff00C897),
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(20.0)),
                    //       textStyle:
                    //           TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                    //   onPressed: () {
                    //     // to navigate to / connect to diff page we use "Navigator"

                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
