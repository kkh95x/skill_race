

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/presentation/components/confirm_code_component.dart';

class AuthFlowPage extends ConsumerWidget {
  const AuthFlowPage({super.key});
  static String get routeName=>"auth";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      
      body:ConfirmCodeComponent()
    );
  }
}