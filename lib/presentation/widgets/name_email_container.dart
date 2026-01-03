import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/core/strings/strings.dart';


class NameEmailContainer extends StatelessWidget {
  const NameEmailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
    
    child: Row(children: [
      const SizedBox(width: 10,),
      const CircleAvatar(radius:35,
      backgroundImage: AssetImage("assets/images/be_your_best_self.png"),
      ),
      const SizedBox(width: 20,),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(AppString.wessamelsayed.tr(),
        style:const TextStyle(
          fontSize: 20,
        ),),
        Text(AppString.email.tr(),
        style:const TextStyle(
          fontSize: 12,
        ),),            
      ],),
      const SizedBox(width: 20,),
      const Icon(Icons.edit),
      
      // IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode))
    ],),);
  }
}