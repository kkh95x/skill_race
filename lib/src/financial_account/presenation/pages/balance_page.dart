


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/financial_account/application/get_financial_account_stream_provider.dart';
import 'package:skill_race/src/financial_account/presenation/components/financial_imformation_component.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/user/presintation/components/need_sgin_up_component.dart';

class BalancePage extends ConsumerWidget {
  const BalancePage({super.key});
 static String get routeName=>"balance-page";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final isAuth=ref.watch(userAuthNotifer).state==AuthStatus.auth;
    if(isAuth){
return Scaffold(
  body:   SafeArea(
  
    child:   Column(
  
    
  
      mainAxisSize: MainAxisSize.min,
  
    
  
      children: [
  
    
  appBarComponent(title: "Finance Account", context: context,showBack: true,showMessage: false),
    ref.watch(getFinancialAccountStreamProvider).when(data: (data) {
  
    
  
      return FinancialInformationsComponent(financeData: data);
  
    
  
    }, error: (error, stackTrace) =>const Center(child: Text("Error"),), loading: () {
  
    
  
      return const Center(child: CircularProgressIndicator(),);
  
    
  
    },)
  
    
  
      ],
  
    
  
    ),
  
  ),
);
    }else{
      return  const NeedSginUpComponent() ; 

    }
  }
}