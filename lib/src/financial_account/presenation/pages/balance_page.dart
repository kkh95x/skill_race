import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/financial_account/application/get_financial_account_stream_provider.dart';
import 'package:skill_race/src/financial_account/application/get_transaction_stream_provider.dart';
import 'package:skill_race/src/financial_account/presenation/components/financial_imformation_component.dart';
import 'package:skill_race/src/financial_account/presenation/widget/transation_card_widget.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/user/presintation/components/need_sgin_up_component.dart';

class BalancePage extends ConsumerWidget {
  const BalancePage({super.key});
  static String get routeName => "balance-page";
  static String get routePath => "/$routeName";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuth = ref.watch(userAuthNotifer).state == AuthStatus.auth;
    if (isAuth) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              appBarComponent(
                  title: "Finance Account",
                  context: context,
                  showBack: true,
                  showMessage: false),
              ref.watch(getFinancialAccountStreamProvider).when(
                    data: (data) {
                      return Column(
                        children: [
                          FinancialInformationsComponent(financeData: data),
                          SizedBox(height: 10.h,),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 16.w),
                            child: const Row(
                              children: [
                                Text("Latest transactions")
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            physics:const AlwaysScrollableScrollPhysics(),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 10.w),
                              child: Column(
                                children: [
                                  ref.watch(getTransactionProvider).when(data: (recipes) {
                                    return ListView.builder(
                                      physics:const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: recipes.length,
                                      itemBuilder: (context, index) {
                                      return ListTileComponent(date: recipes[index].dateTime, amount:  recipes[index].amount.toString(), description:  recipes[index].description, type:  recipes[index].type?.name??"-");
                                    },);
                                    
                                    
                                  }, loading: () =>const Center(child: CircularProgressIndicator(),), error: (e, stk) =>const Center(child: Text("Error"),), onGoingLoading: (recipes) {
                                     return ListView.builder(
                                            physics:const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: recipes.length+1,
                                      itemBuilder: (context, index) {if(index== recipes.length){
                                        return const Center(child: CircularProgressIndicator(),);
                                      }
                                      return ListTileComponent(date: recipes[index].dateTime, amount:  recipes[index].amount.toString(), description:  recipes[index].description, type:  recipes[index].type?.name??"-");
                                    },);
                                  }, onGoingError: (recipes, e, stk) {
                                     return ListView.builder(
                                            physics:const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: recipes.length,
                                      itemBuilder: (context, index) {
                                      return ListTileComponent(date: recipes[index].dateTime, amount:  recipes[index].amount.toString(), description:  recipes[index].description,  type:  recipes[index].type?.name??"-");
                                    },);
                                  },)
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    error: (error, stackTrace) => const Center(
                      child: Text("Error"),
                    ),
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  )
            ],
          ),
        ),
      );
    } else {
      return const NeedSginUpComponent();
    }
  }
}
