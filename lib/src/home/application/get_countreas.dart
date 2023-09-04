import 'dart:convert';

import 'package:flutter/services.dart';

class AllCountres{
  AllCountres._();
 static Map<String,List<String>> countries={};
 static bool isInit=false;
  static Future init()async{
   var data = await rootBundle.loadString("assets/countries.json");
      var jsonData = json.decode(data);
      jsonData.forEach((key, value) {
          if (value is List<dynamic>) {
            countries[key] = value.cast<String>();
          }
        });
      isInit = true;

  }

}
