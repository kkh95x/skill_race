
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';


// import '../../../admin_web_management/data/firestore_finance_snapshot_repository.dart';

enum CardType { balance, income, withdrew }

enum CardSize { big, small }

class CardWidget extends ConsumerWidget {
  const CardWidget(
      {required this.type,
      required this.size,
      required this.showDetails,
      this.detailsLable,
      this.detailsRoute,
      required this.title,
      required this.amount,
      this.userMenuNavIndex = 0,
      this.pageTitle = "",
      super.key});
  final CardType type;
  final CardSize size;
  final bool showDetails;
  final String? detailsLable;
  final String? detailsRoute;
  final String title;
  final int userMenuNavIndex;
  final double amount;
  final String pageTitle;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: type == CardType.balance
            ?null
            : type == CardType.income
                ? Colors.greenAccent
                : Theme.of(context).colorScheme.error.withOpacity(.7),
                gradient: type == CardType.balance? LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary]):null
      ),
      // width: size == CardSize.big ? 376.w : 170.w,
      height: size == CardSize.big ? 178.h : 150.h,
      child: Stack(
        children: [
          // first curve line
          Align(
            alignment: Alignment.center,
            child: ClipPath(
              clipper: WaveClipper(i: 1),
              child: Container(
                height: size == CardSize.big ? 118.h : 42.h,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    border:
                        Border.all(color:Colors.black45, width: 2)),
              ),
            ),
          ),
          // second curve line
          Align(
            alignment: Alignment.center,
            child: ClipPath(
              clipper: WaveClipper(i: 2),
              child: Container(
                height: size == CardSize.big ? 118.h : 42.h,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    border:
                        Border.all(color: Colors.black45, width: 2)),
              ),
            ),
          ),
          // third curve line
          Align(
            alignment: Alignment.center,
            child: ClipPath(
              clipper: WaveClipper(i: 3),
              child: Container(
                height: size == CardSize.big ? 118.h : 30.h,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    border:
                        Border.all(color: Colors.black45.withOpacity(.4), width: 2)),
              ),
            ),
          ),
          Positioned(
              top: 11.h,
              left: 20.w,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: type == CardType.balance
                        ? Colors.white
                        : Colors.black26.withOpacity(.4
                        )),
              )),
          Positioned(
              top: 30.h,
              left: 20.w,
              child: Text(
                NumberFormat.currency(symbol: "\$").format(amount),
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 29.sp,
                    fontWeight: FontWeight.w800,
                    color: type == CardType.balance
                        ? Colors.white
                        : Colors.black38),
              )),
          Positioned(
            bottom: 11.h,
            right: 11.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (showDetails)
                  TextButton(
                    onPressed: detailsRoute != null
                        ? () {
                            // // fill data for chatr
                            // // // print("fill data");
                            // // ref.read(firestoreFinanceSnapshotRepositoryProvider).setDefaultDataForCharts();
                            // if (!kIsWeb) {
                            //   int temp = 0;
                            //   switch (detailsRoute) {
                            //     case "/main-page/income-transactions":
                            //       temp = 0;
                            //       break;
                            //     case "/main-page/balance-transactions":
                            //       temp = 1;
                            //       break;

                            //     case '/main-page/withdrew-transactions':
                            //       temp = 4;
                            //       break;

                            //     // default:
                            //     //   return const Text("Default");
                            //   }
                            //   ref
                            //       .read(mobileBottomNavIndexProvider.notifier)
                            //       .state = temp;
                            //   ref
                            //       .read(mobileHeaderTitleProvider.notifier)
                            //       .state = temp;
                            // } else {
                            //   ref
                            //       .read(userMenuNavIndexProvider.notifier)
                            //       .state = userMenuNavIndex;
                            //   ref.read(nameOfHeaderProvider.notifier).state =
                            //       pageTitle;
                            // }
                            // context.go(detailsRoute!);
                          }
                        : null,
                    child: Text(
                      detailsLable ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.black45),
                    ),
                  ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  height: size == CardSize.big ? 54.h : 32.h,
                  width: size == CardSize.big ? 54.h : 32.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: type == CardType.balance
                           ? Colors.white
                        : Colors.black38,
                      borderRadius: BorderRadius.circular(90.r)),
                  child: Container(
                    height: size == CardSize.big ? 29.h : 17.h,
                    width: size == CardSize.big ? 29.h : 17.h,
                    decoration: BoxDecoration(
                        color: type == CardType.balance
                            ? Theme.of(context).colorScheme.primary
                            : type == CardType.income
                                 ? Colors.greenAccent
                : Colors.red.shade300,
                        borderRadius: BorderRadius.circular(90.r)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  WaveClipper({required this.i});
  int i;
  @override
  Path getClip(Size size) {
    Path p = Path();
    if (i == 1) {
      // first curve line
      p.moveTo(0, size.height * 0.35);
      var controlPoint1 = Offset(size.width * 0.15, size.height * 0.75);
      var targetPoint1 = Offset(size.width * 0.45, size.height * 0.35);
      p.quadraticBezierTo(
          controlPoint1.dx, controlPoint1.dy, targetPoint1.dx, targetPoint1.dy);
      var controlPoint2 = Offset(size.width * 0.65, size.height * 0.05);
      var targetPoint2 = Offset(size.width, size.height * 0.55);
      p.quadraticBezierTo(
          controlPoint2.dx, controlPoint2.dy, targetPoint2.dx, targetPoint2.dy);
      p.lineTo(size.width - 1, size.height * 0.55 - 1);
      p.quadraticBezierTo(controlPoint2.dx - 1, controlPoint2.dy - 1,
          targetPoint1.dx - 1, targetPoint1.dy - 1);
      p.quadraticBezierTo(controlPoint1.dx - 1, controlPoint1.dy - 1, 0,
          size.height * 0.35 - 1);
    } else if (i == 2) {
      // second curve line
      p.moveTo(0, size.height * 0.60);
      var controlPoint1 = Offset(size.width * 0.15, size.height * 0.88);
      var targetPoint1 = Offset(size.width * 0.50, size.height * 0.45);
      p.quadraticBezierTo(
          controlPoint1.dx, controlPoint1.dy, targetPoint1.dx, targetPoint1.dy);
      var controlPoint2 = Offset(size.width * 0.65, size.height * 0.25);
      var targetPoint2 = Offset(size.width, size.height * 0.60);
      p.quadraticBezierTo(
          controlPoint2.dx, controlPoint2.dy, targetPoint2.dx, targetPoint2.dy);
      p.lineTo(size.width - 1, size.height * 0.60 - 1);
      p.quadraticBezierTo(controlPoint2.dx - 1, controlPoint2.dy - 1,
          targetPoint1.dx - 1, targetPoint1.dy - 1);
      p.quadraticBezierTo(controlPoint1.dx - 1, controlPoint1.dy - 1, 0,
          size.height * 0.60 - 1);
    } else {
      // third curve line
      p.moveTo(0, size.height * 0.80);
      var controlPoint1 = Offset(size.width * 0.20, size.height);
      var targetPoint1 = Offset(size.width * 0.50, size.height * 0.65);
      p.quadraticBezierTo(
          controlPoint1.dx, controlPoint1.dy, targetPoint1.dx, targetPoint1.dy);
      var controlPoint2 = Offset(size.width * 0.70, size.height * 0.45);
      var targetPoint2 = Offset(size.width, size.height * 0.65);
      p.quadraticBezierTo(
          controlPoint2.dx, controlPoint2.dy, targetPoint2.dx, targetPoint2.dy);
      p.lineTo(size.width - 1, size.height * 0.65 - 1);
      p.quadraticBezierTo(controlPoint2.dx - 1, controlPoint2.dy - 1,
          targetPoint1.dx - 1, targetPoint1.dy - 1);
      p.quadraticBezierTo(controlPoint1.dx - 1, controlPoint1.dy - 1, 0,
          size.height * 0.80 - 1);
    }
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
