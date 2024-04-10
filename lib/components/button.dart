import 'package:flutter/material.dart';
import '../models/pants.dart';

class Button extends StatelessWidget{
  final PantsInfo? pantsinfo;
  final Widget transitionpage;

  Button({this.pantsinfo, required this.transitionpage});

  @override

  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(300, 100),
          backgroundColor: pantsinfo?.color ?? Colors.white
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => transitionpage)
          );
        },
        child: Text(pantsinfo?.shape ?? ""),
      )
    );
  }
}