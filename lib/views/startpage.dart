import 'package:flutter/material.dart';
import 'colorpage.dart';

class StartPage extends StatelessWidget{

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context) => ColorPage()
              ),
            );
          },child: Text("Start"),
        ),
      )
    );
  }
}