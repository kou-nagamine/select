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
      case "スキニー":
        pnatsimage = SvgPicture.asset(
            'assets/images/skinny.svg',
            width: 400, 
            height: 400,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(pantsinfo.color ?? Colors.black, BlendMode.srcIn),
        );
        break;
      case "ジーンズ":
        pnatsimage = SvgPicture.asset(
            'assets/images/jeans.svg',
            width: 400, 
            height: 400,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(pantsinfo.color ?? Colors.black, BlendMode.srcIn),
        );
        break;
      case "スウェット":
        pnatsimage = SvgPicture.asset(
            'assets/images/sweat.svg',
            width: 400, 
            height: 400,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(pantsinfo.color ?? Colors.black, BlendMode.srcIn)
        );
        break;
      default:
        pnatsimage = Text("not fonud image");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("あなたが普段履いている長ズボンは",style: TextStyle(fontSize: 20),),
            SizedBox(height: 100),
            pnatsimage,
            Text("おしゃれですね！",style: TextStyle(fontSize: 30),)
          ],
        ) 
      ),
    );
  }
}