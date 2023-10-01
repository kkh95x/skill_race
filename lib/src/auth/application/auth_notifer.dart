// ignore_for_file: prefer_final_fields

import 'dart:ffi';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:skill_race/core/domain/specialization.dart';
import 'package:skill_race/router.dart';
import 'package:skill_race/splash.dart';
// import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/application/auth_user_service.dart';
import 'package:skill_race/src/auth/presentation/pages/auth_flow_page.dart';
import 'package:skill_race/src/employe/domain/employe.dart';
import 'package:skill_race/src/financial_account/domain/financial_account.dart';
import 'package:skill_race/src/hiring/domain/hiring.dart';
import 'package:skill_race/src/user/application/user_form.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

final userAuthNotifer = StateNotifierProvider<AuthNotifer, AuthState>(
    (ref) => AuthNotifer(ref.read(userServiceProvider), ref));

class AuthNotifer extends StateNotifier<AuthState> {
  final Ref _ref;
  AuthNotifer(this._userService, this._ref)
      : super(const AuthState(state: AuthStatus.loading)) {
    _userService.getUserLocaly().then((userId) {
      print("--->r userId $userId");
      if (userId == null) {
        state = const AuthState(state: AuthStatus.unAtuth);
      } else {
        _userService.getUserFromCloudById(userId).then((user) {
          if (user == null) {
            state = const AuthState(state: AuthStatus.unAtuth);
          }
          _userService.getFinancialAccount(user!.id!).then((finicalAccount) {
            if (finicalAccount == null) {
              _userService
                  .creatFinancialAccount(FinancialAccount(
                      balance: 0, income: 0, outcome: 0, referenceId: user.id!))
                  .then((newFinicalAccount) {
                state = AuthState(
                    state: AuthStatus.auth,
                    currentUser: user,
                    id: user.id,
                    financialAccountId: newFinicalAccount.id);
              });
            } else {
              state = AuthState(
                  state: AuthStatus.auth,
                  currentUser: user,
                  id: user.id,
                  financialAccountId: finicalAccount.id);
            }
          });
        });
      }
    });
  }

  UserService _userService;

  // Future sentOtpToEmail(FormGroup formGroup ) async{
  //   final email =formGroup.control("email").value;
  // }

  // Future<void> sginInWithFacebook()async{
  //   BotToast.showLoading();
  //   // final usercredential =await _userService.signInWithFacebook();
  //   // if(usercredential.user!=null){
  //   //   final id=usercredential.user?.uid;
  //   //   debugPrint("---> user facebook info ${usercredential.user}");
  //   //   state =AuthState(state: AuthStatus.newPasswordEntry,id: id);
  //   //   BotToast.closeAllLoading();
  //   //   BotToast.showText(text: "login facbook seccssfully");

  //   // }else{
  //     await Future.delayed(const Duration(seconds: 1));
  //      BotToast.closeAllLoading();
  //     BotToast.showText(text: "login facbook not support");

  //   // }

  // }
  Future<void> sginInWithGoogle() async {
    BotToast.showLoading();
    try {
      final usercredential = await _userService.signInWithGoogle();
      if (usercredential.user != null) {
        final email = usercredential.user?.email;

        debugPrint("----> user google info ${usercredential.user}");
        final user = await _userService.getUserFromCloud(email ?? "");
        if (user != null) {
          state = AuthState(
              state: AuthStatus.auth,
              id: usercredential.user?.uid,
              email: usercredential.user?.email,
              fullName: usercredential.user?.displayName,
              currentUser: user);
          _userService.saveUserLocaly(user.id);
        } else {
          state = AuthState(
              state: AuthStatus.selectType,
              id: usercredential.user?.uid,
              email: usercredential.user?.email);
          BotToast.closeAllLoading();
          final context = mainkey.currentState?.context;
          if (context != null && context.mounted) {
            context.push(AuthFlowPage.routePath);
          }

          // ignore: use_build_context_synchronously
        }

        // BotToast.showText(text: "login google seccssfully");
      } else {
        BotToast.closeAllLoading();
        BotToast.showText(text: "login google rejected");
      }
    } catch (e) {
      // BotToast.showText(text: e.toString());

      print("Error: ${e.toString()}");
      BotToast.showText(text: e.toString());
    }
    BotToast.closeAllLoading();
  }

  Future<void> createUser(BuildContext context) async {
    final form = _ref.read(userFormProvider());
    final accountType =
        form.control(UserFormkeys.accountType).value as AccountType;
    final email = state.email;
    final id = state.id;
    if (accountType == AccountType.employe) {
      final name = form.control(UserFormkeys.empName).value;
      final jobName = form.control(UserFormkeys.empWorkType).value;
      final coutnryName = form.control(UserFormkeys.empCountry).value;
      final cityName = form.control(UserFormkeys.empCity).value;
      final specializtion =
          form.control(UserFormkeys.empSpecialization).value as Specialization;
      final supSpeciaiztion =
          form.control(UserFormkeys.empSupSpecialization).value;
      BotToast.showLoading();
      final user = AppUser(
          fullname: name,
          accountType: accountType,
          country: coutnryName,
          city: cityName,
          id: id,
          email: email,
          employee: Employee(
              jobType: jobName,
              specialization: specializtion.name,
              supSpecialization: supSpeciaiztion));

      final savedUser = await _userService.createNewUser(user);
      final financialAccount = await _userService.creatFinancialAccount(
          FinancialAccount(
              balance: 0, income: 0, outcome: 0, referenceId: savedUser.id!));
      state = AuthState(
          state: AuthStatus.auth,
          currentUser: savedUser,
          financialAccountId: financialAccount.id);
      BotToast.closeAllLoading();
      if (context.mounted) {
        context.pop();
      }

      _ref.read(userFormProvider()).reset();
    } else if (accountType == AccountType.hiring) {
      final name = form.control(UserFormkeys.hiringName).value;

      final conmpanyName = form.control(UserFormkeys.hiringCompanyName).value;
      final phone =
          form.control(UserFormkeys.hiringPhoneNumber).value as PhoneNumber;
      final coutnryName = form.control(UserFormkeys.hiringCountry).value;
      final cityName = form.control(UserFormkeys.hiringCity).value;
// final specializtion=form.control(UserFormkeys.empSpecialization).value;
// final supSpeciaiztion=form.control(UserFormkeys.empSupSpecialization).value;
      BotToast.showLoading();
      final user = AppUser(
          fullname: name,
          accountType: accountType,
          country: coutnryName,
          city: cityName,
          id: id,
          email: email,
          phone: phone.international,
          hiring: Hiring(companyName: conmpanyName));

      final savedUser = await _userService.createNewUser(user);
      state = AuthState(state: AuthStatus.auth, currentUser: savedUser);
      BotToast.closeAllLoading();
      if (context.mounted) {
        context.pop();
      }
      _ref.read(userFormProvider()).reset();
    }
  }
// Future<void> addPasswordName(FormGroup formGroup)async{
//   BotToast.showLoading();
//  final password=formGroup.control("password").value;
//     final fullName=formGroup.control("fullname").value;
//    final email=state.email;
//    final id=state.id;

//   final appUser=AppUser(password:password,fullname: fullName,email:email,id:id ,accountType: AccountType.employe);
//   // final user=await _userService.createNewUser(appUser);
//   debugPrint("create user Seccssfuly ");
//   state=AuthState(state: AuthStatus.empolyeeEntery,currentUser: appUser,email: email,id: id);
//   BotToast.closeAllLoading();
// }

// // Future<void> addInterstsToUserAndCreateIt(FormGroup formGroup)async{
// //   BotToast.showLoading();
// //   final interests=formGroup.control("Interests").value;
// //   final user=state.currentUser?.copyWith(interests: interests);

// //   final newUser=await _userService.createNewUser(user!);
// //   await _userService.saveUserLocaly(newUser.id);
// //   state=AuthState(state: AuthStatus.auth,currentUser: newUser,email: state.email,id: state.id);
// //   BotToast.closeAllLoading();

// // }
  Future<void> logOut() async {
    BotToast.showLoading();
    final removed = await _userService.sginOut();

    if (removed ?? false) {
      BotToast.closeAllLoading();
      state = const AuthState(
          state: AuthStatus.unAtuth, currentUser: null, id: null);
      // if(mainkey.currentState?.context.mounted??false){
      // // ignore: use_build_context_synchronously
      // mainkey.currentState?.context.go(SplashPage.routePath);
      // }
      BotToast.showText(text: "logout seccessfully");
      // if(context.mounted){
      // context.push(SplashPage.routePath);}
    } else {
      BotToast.closeAllLoading();

      BotToast.showText(text: "some thing worng");
    }
  }

  void changeState(AuthStatus newState) {
    state = AuthState(
        state: newState,
        currentUser: state.currentUser,
        id: state.id,
        email: state.email,
        fullName: state.fullName,
        accountType: state.accountType);
  }

  Future<void> updateUser(AppUser user) async {
    BotToast.showLoading();
    final userUpdated = await _userService.updateUser(user);
    state = state.copyWith(currentUser: userUpdated);
    BotToast.closeAllLoading();
    return;
  }
}
