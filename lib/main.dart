import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task_manager_list/view_models/app_view_model.dart';
import 'package:task_manager_list/views/splash.dart';

//import 'views/task_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
