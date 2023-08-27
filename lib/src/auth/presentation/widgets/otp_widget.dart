import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_pinput/reactive_pinput.dart';

class OTPWidget extends ConsumerWidget {
  const OTPWidget({super.key, this.margin,required this.formControlle});
  final EdgeInsetsGeometry? margin;
  final String  formControlle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: margin ?? const EdgeInsets.only(left: 20.0, right: 20.0),
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: ReactivePinPut<String>(
          formControlName:formControlle,
          length: 4,
          defaultPinTheme: PinTheme(
            height: 64,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Colors.white,
            ),
            textStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          focusedPinTheme: PinTheme(
            height: 68,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),

              border: Border.all(color: Colors.black),
              color:Colors.white,
            ),
            textStyle:
                TextStyle(color: Theme.of(context).colorScheme.onSecondary),
          ),
          animationCurve: Curves.bounceIn,
        disabledPinTheme:PinTheme(
            height: 68,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),

              border: Border.all(color: Colors.black),
              color:Colors.white,
            ),
            textStyle:
                TextStyle(color: Colors.black),
          ) ,
          errorPinTheme: PinTheme(
            decoration: BoxDecoration(
              color: const Color(0xFFBA1A1A),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
