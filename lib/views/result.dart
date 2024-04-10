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

    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("結果を見る",style: TextStyle(fontSize: 40),),
            SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(250,100)
              ),
              onPressed: () {
                CloudflareConnecter.insertData(pantsinfo);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) => Resultpage(pantsinfo: resultinfo))
                );
              }, child: Text('Result',style: TextStyle(fontSize:25)),
            ),
            SizedBox(height:20)
          ],
        )
      )
    );
  }
}