import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiUrl = 'https://wayhike.com/dsc/demo_app_api.php';
class Data{
  Data(this.url);

  final String url;

  Future getData()async{
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    }

    else{
      print(response.statusCode);
      print('no output');
    }
  }
}
