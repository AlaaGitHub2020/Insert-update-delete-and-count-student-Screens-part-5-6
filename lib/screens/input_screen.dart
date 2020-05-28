import 'package:flutter/material.dart';

class InputStudentPage extends StatefulWidget {
  String tilte;
  InputStudentPage(this.tilte);
  @override
  State<StatefulWidget> createState() {
    return _InputStudentPageState(this.tilte);
  }
}

class _InputStudentPageState extends State<InputStudentPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _classController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  String appBarTilte;
  _InputStudentPageState(this.appBarTilte);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          appBarTilte,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      // in this screen we will have the options that make the user insert student
      // delete , and update and all the operation we defined in the database_helper
// continue building the main screen

      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Student Name',
                  hintText: 'Enter Student Name',
                  icon: Icon(
                    Icons.person,
                  ),
                ),
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Student Age',
                  hintText: 'Enter Student Age',
                  icon: Icon(
                    Icons.calendar_today,
                  ),
                ),
              ),
              TextField(
                controller: _classController,
                decoration: InputDecoration(
                  labelText: 'Student Class',
                  hintText: 'Enter Student Class',
                  icon: Icon(
                    Icons.class_,
                  ),
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Student Email',
                  hintText: 'Enter Student Email',
                  icon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Student Address',
                  hintText: 'Enter Student Address',
                  icon: Icon(
                    Icons.map,
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
                    appBarTilte,
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
// in this video I'll continue the screens and methods

}
