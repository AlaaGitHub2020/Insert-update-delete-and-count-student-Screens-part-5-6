import 'package:covid19information/screens/delete_student.dart';
import 'package:covid19information/screens/input_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Main ',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.green,
                  BlendMode.color,
                ),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset(
                    'images/bird.gif',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Text(
                  'Please select the operation',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                    ),
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text(
                        'Insert Student',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onPressed: () {
                        _insertStudent();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                    ),
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text(
                        'Delete Student',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onPressed: () {
                        _deleteStudent();
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                    ),
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text(
                        'Update Student',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onPressed: () {
                        _updateStudent();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                    ),
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text(
                        'Get All Students',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 20.0,
                ),
                child: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'Get count Students',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onPressed: () {
                    _getCountStudent();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 20.0,
                ),
                child: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'Get Student Info by ID',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 20.0,
                ),
                child: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'Get Student Info by Name',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _insertStudent() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => InputStudentPage('Insert Student'),
      ),
    );
  }

  void _updateStudent() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => InputStudentPage('Update Student'),
      ),
    );
  }

  void _deleteStudent() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DeleteStudentPage(),
      ),
    );
  }

  void _getCountStudent() {
    AlertDialog studentCount = AlertDialog(
      title: Text('Student Count'),
      content: Text(
        'We have N Student',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      backgroundColor: Colors.green,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ],
    );
    showDialog(
      context: context,
      builder: (context) => studentCount,
    );
  }
}
