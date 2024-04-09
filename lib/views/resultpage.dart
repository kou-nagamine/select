import 'package:flutter/material.dart';
import '../models/pants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Resultpage extends StatelessWidget {
  final PantsInfo pantsinfo;

  Resultpage({super.key, required this.pantsinfo});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(pantsinfo.shape ?? ""),
        backgroundColor: pantsinfo.color,
      ),
      body: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          Container(
            child: SvgPicture.asset(
              'assets/images/heart.svg',
            )
          )
        ]
      ),
    );
  }
}