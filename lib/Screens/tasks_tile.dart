import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',style: TextStyle(color: Colors.white),),
      trailing: Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white,),
          child: Checkbox(value: false, tristate: false, onChanged: (bool value) {})),
    );
  }
}