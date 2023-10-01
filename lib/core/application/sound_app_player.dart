


import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
class AppSoundPalyer{

 static Future<void> playeRecourdStart()async{
 return   FlutterRingtonePlayer.play(fromAsset: "assets/mp3/start_recoard.mp3");

  }
  
 static Future<void> stopreRecourdStart()async{
 return   FlutterRingtonePlayer.play(fromAsset: "assets/mp3/stop_recoard.mp3");

  }

}