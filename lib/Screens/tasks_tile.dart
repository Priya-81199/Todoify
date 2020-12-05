import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState){
    setState(() {
            isChecked = checkboxState;
         });
  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          color: Colors.white,
          decoration: (isChecked? TextDecoration.lineThrough : null)
        ),
      ),
      trailing: Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white,),
          child: TaskCheckbox(isChecked,checkboxCallback)),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox(this.checkboxState,this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightGreen.shade600,
        value: checkboxState,
        onChanged: toggleCheckboxState
    );
  }
}