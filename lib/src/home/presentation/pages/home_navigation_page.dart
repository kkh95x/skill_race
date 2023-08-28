
import 'package:flutter/material.dart';
import 'package:skill_race/src/home/presentation/components/bottom_nave_bar_component.dart';

class HomePageNavigation extends StatelessWidget {
  const HomePageNavigation({super.key,required this.child}):super(
    
  );
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        child,
        const Positioned(
          bottom: 0,right: 0,left: 0,
          child: BottomNaveBarComponent())

      ]),
    );
  }
}