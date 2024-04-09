import 'package:http/http.dart' as http;
import "../models/pants.dart";
import "dart:convert";

class CloudflareConnecter{
  static const String cloudeflareUrl = 'http://insertinfo.kou6922gool.workers.dev';

  static Future<void> insertData(PantsInfo pantsinfo) async {

    try {
      final response = await http.post(
        Uri.parse(cloudeflareUrl),
        headers: {'Content-Type': 'application/json'},
        body:jsonEncode({
          'color': pantsinfo.color.toString(),
          'shape': pantsinfo.shape,
        })
      );

      if (response.statusCode == 201) {
        print('Data inserted successfuly');
        print('body${response.body}');
      } else {
        print('Data insert failed');
        print('${response.body}');
      }
    }catch(e){
      print('Error: ${e}');
    }
  }
}