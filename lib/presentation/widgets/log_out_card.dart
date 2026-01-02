import 'package:flutter/material.dart';
import 'package:localization/core/strings/strings.dart';
import 'package:localization/presentation/widgets/icon_text_row.dart';

class LogOutCard extends StatelessWidget {
  const LogOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: IconTextRow(txt: AppString.logout, icon: Icons.logout, backicon: null,)
      );
  }
    
}