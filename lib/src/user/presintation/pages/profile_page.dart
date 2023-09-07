import 'package:flutter/material.dart';
import 'package:skill_race/src/user/presintation/components/profile_component.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
 static String get routeName=>"user-profile";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context) {
    return  const ProfileComponent() ; 
    
  }
}