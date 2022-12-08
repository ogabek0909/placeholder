import 'dart:convert';

import 'package:http/http.dart' as http;

class Service{
  static Future getData()async{
    Uri url= Uri(
      scheme: 'https',
      host: 'jsonplaceholder.typicode.com',
      path: 'photos'
    );
    http.Response response = await http.get(url);
    var dataFromJson = jsonDecode(response.body);
    print(dataFromJson);
    return dataFromJson;
  }
}