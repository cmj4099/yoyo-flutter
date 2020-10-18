import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:state_management_examples/widgets/tasks_list.dart';
import 'package:state_management_examples/widgets/add_task_screen.dart';
import 'package:state_management_examples/models/task.dart';

class TasksScreen extends StatefulWidget {


  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List <Task> tasks = [
    Task(name: ' 우유 사기'),
    Task(name: '계란 사기'),
    Task(name: '빵 사기'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
          child: Icon(Icons.add,),
        onPressed: (){
          showModalBottomSheet(context: context,isScrollControlled: true, builder: (context) =>
              AddTaskScreen(
                  (newTaskTitle){
                    setState(() {
                      tasks.add(Task(name: newTaskTitle));
                    });
                  }
              ));
        },
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:EdgeInsets.only(
              top:60 ,bottom: 30,right:30,left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    child: Icon(Icons.list,
                    size:30,
                    color: Colors.lightBlue,),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text('12 Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:20 ),
              height:300.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: TasksList(tasks),
            ),
          )
        ],

      ),



    );
  }
}

