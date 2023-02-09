import 'package:flutter/material.dart';
import 'package:task_manager_list/views/login_page.dart';
import 'package:task_manager_list/views/task_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 244, 230, 31),
                Colors.white,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Image(image: AssetImage('assets/spashscreen.png')),
          ),
          Center(
            child: Container(
                height: 170,
                width: 170,
                child: Image(image: AssetImage('assets/image/logo.png'))),
          )
        ],
      )),
    );
  }
}
