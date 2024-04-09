import 'package:flutter/material.dart';
import '../models/pants.dart';

class Button extends StatelessWidget{
  final PantsInfo pantsinfo;
  final Widget transitionpage;

  Button({required this.pantsinfo, required this.transitionpage});

  @override

  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: pantsinfo.color ?? Colors.white
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => transitionpage)
          );
        },
        child: Text(pantsinfo.shape ?? ""),
      )
    );
  }

}