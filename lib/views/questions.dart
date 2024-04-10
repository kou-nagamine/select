import 'package:flutter/material.dart';
import '../components/page.dart';
import 'colorselect.dart';

class FirstQuestion extends StatelessWidget{
  FirstQuestion({super.key});
  Widget build(BuildContext context) {
    return (
      SelectPage(items:["a","b","c"], title: "質問", nextpage: SelectPage2())
    );
  }
}

class SelectPage2 extends StatelessWidget{
  SelectPage2({super.key});
  Widget build(BuildContext context) {
    return (
      SelectPage(items:["a","b","c"], title: "質問", nextpage: ColorPage())
    );
  }
}

