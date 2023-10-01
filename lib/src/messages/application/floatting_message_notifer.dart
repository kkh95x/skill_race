import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'floatting_message_notifer.freezed.dart';
@freezed
abstract class FloatingAcionMessageState with _$FloatingAcionMessageState {
const factory FloatingAcionMessageState.onReady() = _OnReady;
const factory FloatingAcionMessageState.onText() = _OnText;
const factory FloatingAcionMessageState.onVoice() = _OnVoice;

  
}
final floatingActionButtonNotifer=StateNotifierProvider<FloatingActionMessageNotifer,FloatingAcionMessageState>((ref) => FloatingActionMessageNotifer());
class FloatingActionMessageNotifer extends StateNotifier<FloatingAcionMessageState>{
  FloatingActionMessageNotifer():super(const FloatingAcionMessageState.onReady());

changeState(FloatingAcionMessageState newState){
  print("--->FloatingAcionMessageState ${newState.toString()}");
  state=newState;
}



}