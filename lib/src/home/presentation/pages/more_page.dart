import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});
 static String get routeName=>"user-more";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("more Page soon ...."),
    );
  }
}