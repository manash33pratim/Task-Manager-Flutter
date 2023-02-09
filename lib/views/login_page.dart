

import 'package:flutter/material.dart';
import 'package:task_manager_list/views/register.dart';
import 'package:task_manager_list/views/task_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 230, 31),
        elevation: 0),
            resizeToAvoidBottomInset: false,
            // set it to false
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
                        child: Image.asset("assets/pkey.png"),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 224, 225, 181),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 252, 165, 34),
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
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 89, 65, 3),
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 00, 20, 0),
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 224, 225, 181),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFF1F48A),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 249, 255, 69),
                                offset: Offset(-0, -0),
                                blurRadius: 80,
                                spreadRadius: 5),
                          ],
                        ),
                        child: TextField(
                          //obscureText: true,
                          textAlign: TextAlign.center,

                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 89, 65, 3),
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        margin: EdgeInsets.fromLTRB(20, 2, 20, 0),
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 166, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      InkWell(
                         onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TaskPage()));

                          },
                          child: Container(
                              width: 100,
                              height: 40,
                              child: Center(child: Text("Log in")),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 194, 147, 76),
                                    width: 2),
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xFFEC8F04),
                              ))),
                      InkWell(
                          onTap:  () {
                                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Center(
                                child: Text("Don't have an account yet ?")),
                          )),
                      InkWell(
                          onTap:  () {
                                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                          },
                          child: Container(
                              width: 200,
                              height: 40,
                              margin: EdgeInsets.fromLTRB(20, 2, 20, 0),
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.center,
                              )))
                    ])))));
  }


}
