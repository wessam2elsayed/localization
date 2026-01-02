import 'package:flutter/material.dart';
import 'package:localization/core/strings/strings.dart';
import 'package:localization/presentation/widgets/icon_text_row.dart';

class GeneralCard extends StatelessWidget {
  const GeneralCard({super.key, });
  

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(children: [
        IconTextRow(txt: AppString.myorders, icon: Icons.card_giftcard, backicon: Icons.arrow_forward_ios),
        Divider(),
       IconTextRow(txt: AppString.location , icon: Icons.location_on, backicon: Icons.arrow_forward_ios,),
       Divider(),
       IconTextRow(txt: AppString.scanqrcode, icon: Icons.qr_code_scanner, backicon: Icons.arrow_forward_ios,),
       Divider(),
       IconTextRow(txt: AppString.pickuplocation, icon: Icons.telegram_sharp, backicon: Icons.arrow_forward_ios,),
       Divider(),
       IconTextRow(txt: AppString.changepassword, icon: Icons.lock_outline, backicon: Icons.arrow_forward_ios,)
      ],)
      
    );
  }
}