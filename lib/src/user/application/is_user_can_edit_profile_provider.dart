import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

final isUserCanEditName=Provider.autoDispose.family<bool,AppUser>((ref,user) {
final lastEdit=user.lastEdtiName;
if(lastEdit==null){
return true;}
final now=DateTime.now();
final dayes=now.difference(lastEdit);
final isMoreThan60Ddayes=dayes.inDays>=60;
return isMoreThan60Ddayes;

});

final isUserCanEditSupecilation=Provider.autoDispose.family<bool,AppUser>((ref,user) {
final lastEdit=user.employee?.lastEditSpecialization;
if(lastEdit==null){
return true;
}
final now=DateTime.now();
final dayes=now.difference(lastEdit);
final isMoreThan60Ddayes=dayes.inDays>=30;
return isMoreThan60Ddayes;

});