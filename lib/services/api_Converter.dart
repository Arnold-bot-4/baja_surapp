
import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;

class ApiClient{
  final Uri currencyUrl = Uri.https("v6.exchangerate-api.com", "/v6/4043a7d31dc8db0623574439/latest/USD");

  Future<List<String>> getCurrencies() async{
    http.Response res = await http.get(currencyUrl);
    if(res.statusCode == 200){
      var body = jsonDecode(res.body);
      var list = body["conversion_rates"];
      List<String> currencies = (list.keys).toList();
     // print(currencies);
      return currencies;
    }else{
      throw Exception("Failed to connect to API");
    }
  }
  
  
  Future<double> getRate(String from , String to , String value) async{
    final Uri rateUrl = Uri.https('v6.exchangerate-api.com' , '/v6/4043a7d31dc8db0623574439/pair/$from/$to/$value');
    print(rateUrl);
    print(value);
    http.Response res = await http.get(rateUrl);
    if(res.statusCode == 200){
      var body = jsonDecode(res.body);
      //print(body["${from}/${to}/${value}"]);
      return body["conversion_result"];

    }
    else{
      throw Exception("Failed to connect to API");
    }
  }

}