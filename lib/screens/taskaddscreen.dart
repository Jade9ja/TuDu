import 'dart:ui';

import 'package:flutter/material.dart';

class TaskAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(40.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.lightBlueAccent,
                minWidth: double.maxFinite,
                height: 45.0,
                child: Text('Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
