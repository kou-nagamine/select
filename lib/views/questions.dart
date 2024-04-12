import 'package:flutter/material.dart';
import '../models/pants.dart';
import '../views/result.dart';
import '../components/page.dart';
import '../views/shapeselect.dart';

class FirstQuestion extends StatelessWidget{
  FirstQuestion({super.key});
  Widget build(BuildContext context) {
    return (
      SelectPage(items:["鮮明である","何となく覚えている","全く覚えていない"], title: "幼少期の記憶は", nextpage: SecondQuestion())
    );
  }
}

class SecondQuestion extends StatelessWidget{
  SecondQuestion({super.key});
  Widget build(BuildContext context) {
    return (
      SelectPage(items:["疲れをとる","ほっと一息つく","基本つからない"], title: "お風呂に浸かる理由は", nextpage: ShapePage())
    );
  }
}

class SixQuestion extends StatelessWidget{
  final PantsInfo pantsinfo;

  SixQuestion({super.key, required this.pantsinfo});
  Widget build(BuildContext context) {
    return (
      SelectPage(items:["0人","１〜５人","５人以上"], title: "気を許せる友達の人数は", nextpage: SeventhQuestion(pantsinfo: pantsinfo))
    );
  }
}

class SeventhQuestion extends StatelessWidget{
  final PantsInfo pantsinfo;

  SeventhQuestion({super.key, required this.pantsinfo});
  Widget build(BuildContext context) {
    return (
      SelectPage(items:["卵","鶏","考えたことない"], title: "鶏が先か卵が先か", nextpage: Result(pantsinfo: pantsinfo))
    );
  }
}


