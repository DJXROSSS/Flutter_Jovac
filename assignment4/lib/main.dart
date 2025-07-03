import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class TaskItem extends StatefulWidget {
  final String task;
  const TaskItem({Key? key, required this.task}) : super(key: key);

  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool _isDone = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.task,
        style: TextStyle(color: Colors.white),
      ),
      value: _isDone,
      onChanged: (value) {
        setState(() {
          _isDone = value!;
        });
      },
    );
  }
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  int _count = 0;
  void incrementCounter(){
    _count++;
  }
  bool _isChecked = false;

  // Widget taskItem(String task){
  //   bool _isDone = false;
  //   return CheckboxListTile(
  //     title: Text(task, style: TextStyle(color: Colors.white),),
  //       value: _isDone,
  //       onChanged: (value) => setState(() {
  //         print(_isDone);
  //         _isDone = !_isDone;
  //       }),);
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 4',
      theme: ThemeData.from(colorScheme: ColorScheme.dark()) ,
      home: Scaffold(
        // backgroundColor: Color(0xFF121714),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Interactive Demo',
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Counter',
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Tap the button to increment the counter.',
                    style: TextStyle(
                      // color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    'Count: $_count',
                    style: TextStyle(
                      // color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          incrementCounter();
                        });
                      },
                      // style: ButtonStyle(
                      //   backgroundColor: WidgetStateColor.resolveWith((states) => Color(0xFF94e0b2),)
                      // ),
                      child: Text(
                        'Increment',
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Toggle Visibility',
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Toggle the visibility of the widget below.',
                    style: TextStyle(
                      // color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,),
                  SwitchListTile(
                    title: Text('Show Widget',
                    style: TextStyle(
                      // color: Colors.white,
                    ),),
                    value: _isChecked,
                    onChanged: (value) => setState(() {
                      _isChecked = value;
                    }),
                  ),
                  if (_isChecked)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/download.jpeg',
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  Text(
                    'Task List',
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Mark tasks as completed by checking the boxes',
                    style: TextStyle(
                      // color: Colors.white,
                    ),
                  ),
                  TaskItem(task: "Task 1: Buy groceries"),
                  TaskItem(task: "Task 2: Finish report"),
                  TaskItem(task: "Task 3: Call mom"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
