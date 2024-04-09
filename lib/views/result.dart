import 'package:flutter/material.dart';
import '../models/pants.dart';
import 'resultpage.dart';
import '../api/cloudflare.dart';

class Result extends StatelessWidget{
  final PantsInfo pantsinfo;

  Result({required this.pantsinfo});

  @override 
  Widget build(BuildContext context) {
    var resultinfo = pantsinfo;

    return Center(
        child: ElevatedButton(onPressed: () {
            CloudflareConnecter.insertData(pantsinfo);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context) => Resultpage(pantsinfo: resultinfo))
            );
          }, child: Text('go result'),
        ),
    );
  }
}