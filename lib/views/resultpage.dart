import 'package:flutter/material.dart';
import '../models/pants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Resultpage extends StatelessWidget {
  final PantsInfo pantsinfo;

  const Resultpage({super.key, required this.pantsinfo});

  @override
  Widget build(BuildContext context){
    return Scaffold(
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