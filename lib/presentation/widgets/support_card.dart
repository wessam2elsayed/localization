import 'package:flutter/material.dart';
import 'package:localization/core/strings/strings.dart';
import 'package:localization/presentation/widgets/icon_text_row.dart';

class SupportCard extends StatelessWidget {
  const SupportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(children: [
        IconTextRow(txt: AppString.needhelp, icon: Icons.question_mark, backicon: Icons.arrow_forward_ios,),
        Divider(),
        IconTextRow(txt: AppString.protectionguarantee, icon: Icons.person_pin_circle, backicon: Icons.arrow_forward_ios,),
        Divider(),
        IconTextRow(txt: AppString.privacypolicy, icon: Icons.privacy_tip, backicon: Icons.arrow_forward_ios,)
      ],)
      
    );
  }
}