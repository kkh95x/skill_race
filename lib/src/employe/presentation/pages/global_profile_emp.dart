
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/employe/presentation/components/globa_emp_component.dart';

class GlobalEmpProfilePage extends ConsumerWidget {
const GlobalEmpProfilePage({super.key,required this.userId});
 static String get routeName=>"employee-profile";
 static String get routePath=>"/$routeName";
 final String userId;
  @override
  Widget build(BuildContext context,WidgetRef  ref) {


   
    return  GlobalEmpProfileComponent(userId: userId) ; 
    
  }
}