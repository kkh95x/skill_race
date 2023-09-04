import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:skill_race/src/home/presentation/components/filter_component.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});
static String get routeName=>"filter";
static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FilterComponent(

      ),
    );
  }
}