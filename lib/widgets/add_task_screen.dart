import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color:Color(0xff757575),
      child: Container(padding: EdgeInsets.only(top:30 ,bottom: 30,right:50,left: 50),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Add Task',
          textAlign: TextAlign.center,
          style:TextStyle(
            fontSize: 30,
            color: Colors.lightBlueAccent,
            fontWeight:FontWeight.w400,
          ),
          ),

          TextField(
            autofocus: true,
            cursorColor: Colors.lightBlueAccent,
            textAlign: TextAlign.center,
            onChanged: (newText){
              print(newText);
                  newTaskTitle = newText;
            },
          ),

        FlatButton(
          child:
          Text('Add',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        color: Colors.lightBlueAccent,
        onPressed: (){
            addTaskCallback(newTaskTitle);

        },
        )

        ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
      ),
    );
  }
}
