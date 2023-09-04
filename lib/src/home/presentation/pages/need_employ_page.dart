import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NeedEmpolyPage extends StatelessWidget {
  const NeedEmpolyPage({super.key});
static String get routeName=>"need-employee";
static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor:Theme.of(context).colorScheme.tertiaryContainer ,
      
      ),
    );
  }
}