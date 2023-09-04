import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});
 static String get routeName=>"user-saved";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Saved Page  soon ...."),
    );
  }
}