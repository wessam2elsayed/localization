import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/core/strings/strings.dart';
import 'package:localization/presentation/widgets/icon_text_row.dart';

class GeneralCard extends StatelessWidget {
  const GeneralCard({super.key, });
  

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(children: [
        IconTextRow(txt: AppString.myorders.tr(), icon: Icons.card_giftcard, backicon: Icons.arrow_forward_ios),
        const Divider(),
       IconTextRow(txt: AppString.location .tr(), icon: Icons.location_on, backicon: Icons.arrow_forward_ios,),
       const Divider(),
       IconTextRow(txt: AppString.scanqrcode.tr(), icon: Icons.qr_code_scanner, backicon: Icons.arrow_forward_ios,),
       const  Divider(),
       IconTextRow(txt: AppString.pickuplocation.tr(), icon: Icons.telegram_sharp, backicon: Icons.arrow_forward_ios,),
       const Divider(),
       IconTextRow(txt: AppString.changepassword.tr(), icon: Icons.lock_outline, backicon: Icons.arrow_forward_ios,)
      ],)
      
    );
  }
}