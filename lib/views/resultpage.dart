import 'package:flutter/material.dart';
import '../models/pants.dart';

class Resultpage extends StatelessWidget {
  final PantsInfo pantsinfo;

  const Resultpage({super.key, required this.pantsinfo});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("${pantsinfo.shape}"),
        backgroundColor: pantsinfo.color,
      )
    );
  }
}