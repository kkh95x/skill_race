
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/officer/domain/officer.dart';
import 'package:skill_race/src/officer/domain/officer_state.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

class BottomOfferControllComponent extends ConsumerWidget {
  const BottomOfferControllComponent({super.key,required this.officer});
  final Officer officer;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state=officer.currentStatus.name;
    final user=ref.read(userAuthNotifer).currentUser;
    if(state==OfficerStutas.pending){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
               const Icon(Icons.done),
               SizedBox(width: 5.w,),
               const Text("Accypte")
                ],
              ),
              
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
               const Icon(Icons.close),
               SizedBox(width: 5.w,),
               const Text("Reject")
                ],
              )
            ],
          );}else if(state==OfficerStutas.wattingHiringToPay){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(user?.accountType==AccountType.employe)
                 Text("Waiting for the client to pay the amount to us",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primary),),
              //   if(user?.accountType==AccountType.hiring)
              //  Row(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //  const Icon(Icons.done),
              //  SizedBox(width: 5.w,),
              //  const Text("Pay the amount")
              //   ],
              // ),
              ],
            );
          }
          else if(state== OfficerStutas.waitingEmpToStart){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(user?.accountType==AccountType.employe)
                  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
               const Icon(Icons.start),
               SizedBox(width: 5.w,),
               const Text("Start")
                ],
              ),
              // if(user?.accountType==AccountType.hiring)
              // const Text("Waiting for the employee to start working")
              ],
            );
          }
         else if(state == OfficerStutas.active){
          return Column(
            children: [
              if(officer.deadLine!=null&&DateTime.now().compareTo(officer.deadLine!)>0)
             
                ...[   Text("Deadline has expired",style: TextStyle(color: Theme.of(context).colorScheme.error),),
                  SizedBox(height: 5.w,),
                GestureDetector(child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(Icons.send ),
                     Text(" delivery now")
                  ],
                ),)],
              if(officer.deadLine!=null&&DateTime.now().compareTo(officer.deadLine!)<=0)
               ...[   Text("Deadline will end in ${officer.deadLine!.difference(DateTime.now()).inDays} days",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                  SizedBox(height: 5.w,),
                GestureDetector(child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(Icons.send ),
                     Text(" delivery now")
                  ],
                ),)],

            ],
          );
         }
          else if(state==OfficerStutas.finshedFromEmployee){
          return const Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                Icon(Icons.attach_money_sharp),
                Text("Withdraw money")
              ],),
          
                Row(children: [
                Icon(Icons.edit_sharp),
                Text("Edit The Link")
              ],),
          
            ],
          );
          }
           else if(state==OfficerStutas.claimFinancialEntitlements){
          return  Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Text("Waiting for admin review",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primary),),
            ],
          );
          }
          else if(state==OfficerStutas.adminTheOfficerInReview){
          return  Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Text("offer is under review",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primary),),
            ],
          );
          }
           else if(state==OfficerStutas.complete){
          return  Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Text("Verified and balance transferred",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primary),),
            ],
          );
          }
          return const SizedBox();
  }
 
}