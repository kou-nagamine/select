import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'colorselect.dart';
import 'questions.dart';

class StartPage extends StatelessWidget{

  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("性格診断",style: TextStyle(fontSize: 40),),
        SizedBox(height: 100),
        Container(
        child:ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context) => FirstQuestion()
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size(250,100)
          ),
          child: Text("Start",style: TextStyle(fontSize: 25),),
        ),
        ),
        SizedBox(height: 20),
      ],
    ),
    )
    );
  }
}