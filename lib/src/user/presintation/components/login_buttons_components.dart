import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_in_button/sign_in_button.dart';
class LoginButtonsComponent extends StatelessWidget {
  const LoginButtonsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.h,),
          Text("You Need Sgin in First.."),
          Divider()
,          SignInButton(
      Buttons.email,
      onPressed: () {},
    ),
    SignInButton(
      Buttons.google,
      onPressed: () {},
    ),
    SignInButton(
      Buttons.facebook,
      onPressed: () {},
    )
        ],
      ),
    );
  }
}