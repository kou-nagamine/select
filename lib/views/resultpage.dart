import 'package:flutter/material.dart';
import 'package:select/views/startpage.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text("普段履いているズボンは",style: TextStyle(fontSize: 30),),
            SizedBox(height: 60),
            pnatsimage,
            SizedBox(height: 10),
            const Text("おしゃれですね ！！！",
              style:TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
          ],
        ) 
      ),
      bottomNavigationBar: BottomAppBar(
        color:Colors.grey,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size:40
                  ),
                  onPressed: () {
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartPage())
                );
                  },
            )
          ]
        ),
      )
    );
  }
}