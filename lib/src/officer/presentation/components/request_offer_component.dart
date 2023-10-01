

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/officer/application/get_requests_offer_provider.dart';
import 'package:skill_race/src/officer/presentation/widgets/offer_widget.dart';

class RequestOfferComponent extends ConsumerWidget {
  const RequestOfferComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final controller=ScrollController();
    controller.addListener(() { 
      ref.read(getRequestOfferProvider.notifier).fetchNextBatch();
    });
    return Container(
      margin: EdgeInsets.only(bottom: 80.h),
      child: SingleChildScrollView(
        physics:const AlwaysScrollableScrollPhysics(),
        controller: controller,
        child: ref.watch(getRequestOfferProvider).when(data: (recipes) {
          if(recipes.isEmpty){
            return const Center(child: Text("No Offers"),);
          }
          return ListView.builder(
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: recipes.length,
            itemBuilder: (context, index) {
            return OfferCardWidget(officer: recipes[index]);
          },);
          
        }, loading: () {
          return const Center(child: CircularProgressIndicator(),);
        }, error: (e, stk) {
          return const Center(child: Text("Error"),);
        }, onGoingLoading: (recipes) {
           return ListView.builder(
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: recipes.length+1,
            itemBuilder: (context, index) {
                if(index==recipes.length){
                  return const Center(child: CircularProgressIndicator(),);
                }
            return OfferCardWidget(officer: recipes[index]);
          },);
        }, onGoingError: (recipes, e, stk) {
          return ListView.builder(
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: recipes.length+1,
            itemBuilder: (context, index) {
                if(index==recipes.length){
                  return const Center(child: Text("Error"),);
                }
            return OfferCardWidget(officer: recipes[index]);});
          
        },),
      ),
    );
  }
}