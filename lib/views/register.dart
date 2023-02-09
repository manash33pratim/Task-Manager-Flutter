import 'package:flutter/material.dart';
import 'package:task_manager_list/views/login_page.dart';


class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 230, 31),
        elevation: 0),
          resizeToAvoidBottomInset: false, // set it to false
          body: SafeArea(
              child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFFFE400),
                        Color.fromARGB(255, 255, 255, 255),
                      ],
                    ),
                  ),
                  child: Column(children: [
                    Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
                      child: Image.asset("assets/rkey.png"),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 224, 225, 181),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 251, 162, 28),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 249, 255, 69),
                              offset: Offset(-0, -0),
                              blurRadius: 80,
                              spreadRadius: 5),
                        ],
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'User Name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 00, 20, 10),
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 224, 225, 181),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 251, 164, 33),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 249, 255, 69),
                              offset: Offset(-0, -0),
                              blurRadius: 80,
                              spreadRadius: 5),
                        ],
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Your Email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 00, 20,20),
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 224, 225, 181),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 255, 170, 43),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 249, 255, 69),
                              offset: Offset(-0, -0),
                              blurRadius: 80,
                              spreadRadius: 5),
                        ],
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
            
                   InkWell(
                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: Container(
                          width: 100,
                          height: 40,
                           child: Center(child: Text("Sign up")),

                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 194, 147, 76), width: 2),
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFEC8F04),
                          )),
                    ),

                    InkWell(
                      onTap:() {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: 
                      Container(
                      margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                      child: Center(child: Text("Already have an account ?")),
                    )),
                    InkWell(
                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                    child:
                    Container(
                        width: 200,
                        height: 40,
                        margin: EdgeInsets.fromLTRB(20, 2, 20, 0),
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                        ))),
                  ])))));
  }
}

