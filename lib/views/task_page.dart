import 'package:flutter/material.dart';

import 'package:task_manager_list/views/add_task_view.dart';
import 'package:task_manager_list/views/header_view.dart';

import 'package:task_manager_list/views/task_info_view.dart';
import 'package:task_manager_list/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading:false,
          title: Center(
            
            
              child: Text('TASKY',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black))),

         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 245, 232, 58),
         ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              // Header View
              Expanded(flex: 1, child: HeaderView()),

              // Task Info View
              Expanded(flex: 1, child: TaskInfoView()),

              // Task List View
              Expanded(flex: 7, child: TaskListView()),
            ],
          ),
        ),
        floatingActionButton: const AddTaskView());
  }
}
