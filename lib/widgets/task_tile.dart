import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          taskTitle,
        style: TextStyle(
          decoration:isChecked ? TextDecoration.lineThrough : null// 조건 연산자
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:checkboxCallback,
      ),
    );
  }
}


// (bool checkboxState){
// setState(() {
// isChecked = checkboxState;// checkboxState는 bool인데 true라고 정의되어있지 않은게 궁금하다 왜냐하면 setstate에서 ischecked는 false이고 바뀔려먼 true가 되어야하기 때문이다.
// });
//
// }



//
// class TaskCheckbox extends StatelessWidget {
//
//   final bool checkboxState;
//   final Function toggleCheckboxState;
//
//   TaskCheckbox({this.checkboxState , this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
