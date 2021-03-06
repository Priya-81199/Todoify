import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoify/Screens/tasks_list.dart';
import 'package:todoify/Screens/add_tasks_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor:  Color(0xffF7EDC9),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add,color: Color.fromRGBO(89, 57, 89,1),),
        onPressed: (){
          showModalBottomSheet(
            context: context, builder: (context) => AddTasksScreen()
          );
        },
      ),
        body:  Center(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Image.asset('assets/pic.webp'),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(89, 57, 89,1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft:Radius.circular(20)
                        )
                      ),
                         child: Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16),
                               child: Text('Todoify',style: TextStyle(
                                fontFamily: 'Lobster',
                                fontSize: 50,
                                color: Colors.white
                                ),
                                ),
                             ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:16.0),
                                child: Text('1 Task',style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                                  ),
                                ),
                              ),
                                Expanded(
                                  child: TasksList(),
                                )
                              ],
                    ),
                         ),

                  ),
                )
              ],
            ),
        ),
    );
  }
}


