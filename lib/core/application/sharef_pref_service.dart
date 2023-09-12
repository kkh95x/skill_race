



import 'package:shared_preferences/shared_preferences.dart';

class SharefPrefranceService{
  SharefPrefranceService._();
  static late SharedPreferences _instance;
  static Future<void> init() async{
    _instance=await SharedPreferences.getInstance();
    return;
  
  }
  static SharedPreferences get instance=>_instance;
}