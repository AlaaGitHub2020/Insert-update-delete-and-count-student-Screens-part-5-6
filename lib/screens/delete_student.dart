import 'package:flutter/material.dart';

class DeleteStudentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DeleteStudentPageState();
  }
}

class _DeleteStudentPageState extends State<DeleteStudentPage> {
  TextEditingController _idColntroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Delete Student',
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25.0,
                  ),
                  controller: _idColntroller,
                  decoration: InputDecoration(
                    labelText: 'Student ID:',
                    hintText: 'Enter Student Id',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'Delete Student',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
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
}
