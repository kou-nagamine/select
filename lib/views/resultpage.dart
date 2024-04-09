import 'package:flutter/material.dart';
import '../models/pants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Resultpage extends StatelessWidget {
  final PantsInfo pantsinfo;

  Resultpage({super.key, required this.pantsinfo});

  @override
  Widget build(BuildContext context){

    Widget pnatsimage;

    switch (pantsinfo.shape){
      case "skinny":
        pnatsimage = SvgPicture.asset(
            'assets/images/skinny.svg',
            colorFilter: ColorFilter.mode(pantsinfo.color ?? Colors.black, BlendMode.srcIn),
        );
        break;
      case "jeans":
        pnatsimage = SvgPicture.asset(
            'assets/images/jeans.svg',
            colorFilter: ColorFilter.mode(pantsinfo.color ?? Colors.black, BlendMode.srcIn),
        );
        break;
      case "sweat":
        pnatsimage = SvgPicture.asset(
            'assets/images/sweat.svg',
            colorFilter: ColorFilter.mode(pantsinfo.color ?? Colors.black, BlendMode.srcIn)
        );
        break;
      default:
        pnatsimage = Text("not fonud image");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(pantsinfo.shape ?? ""),
        backgroundColor: pantsinfo.color,
      ),
      body: Center(
        child: pnatsimage,
      ),
    );
  }
}