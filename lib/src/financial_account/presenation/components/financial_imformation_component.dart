import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/financial_account/domain/financial_account.dart';

import 'package:skill_race/src/financial_account/presenation/widget/card_view_widget.dart';

class FinancialInformationsComponent extends StatelessWidget {
  const FinancialInformationsComponent({
    super.key,
    required this.financeData,
  });

  final FinancialAccount? financeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          CardWidget(
            detailsLable: 'See details' ,
            amount: financeData?.balance ?? 0,
            showDetails: true,
            size: CardSize.big,
            title: 'Available balance' ,
            type: CardType.balance,
            // detailsRoute:
            //     "${MainPage.routeLocation}/${WalletTransactionsPage.routeLocation}",
          ),
          // FinancialCardInformationComponent(
          //   title: 'Available balance',
          //   amount: financeData?.balance ?? 0,
          //   appColor: appColor,
          // ),
          SizedBox(height: 11.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CardWidget(
                  amount: financeData?.income ?? 0,
                  showDetails: true,
                  size: CardSize.small,
                  title: 'Income' ,
                  type: CardType.income,
                  detailsLable: 'See details' ,
                  // detailsRoute:
                  //     "${MainPage.routeLocation}/${IncomeTransactionsPage.routeLocation}",
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: CardWidget(
                  amount: financeData?.outcome ?? 0,
                  showDetails: true,
                  size: CardSize.small,
                  title: 'Withdraw' ,
                  type: CardType.withdrew,
                  detailsLable: 'See details',
                  // detailsRoute:
                  //     "${MainPage.routeLocation}/${WithdrewTransactionsPage.routeLocation}",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
