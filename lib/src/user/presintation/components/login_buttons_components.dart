import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../auth/application/auth_notifer.dart';
class LoginButtonsComponent extends ConsumerWidget{
  const LoginButtonsComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.h,),
          const Text("You Need Sgin in First.."),
          const Divider()
,          SignInButton(
      Buttons.email,
      onPressed: () {
                context.pop();

      },
    ),
    SignInButton(
      Buttons.google,
      onPressed: () async{
         ref.read(userAuthNotifer.notifier).sginInWithGoogle();
        context.pop();
       
      },
    ),
    SignInButton(
      Buttons.facebook,
      onPressed: () {
                context.pop();

      },
    )
        ],
      ),
    );
  }
}