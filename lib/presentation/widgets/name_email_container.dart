import 'package:flutter/material.dart';
import 'package:localization/core/strings/strings.dart';


class NameEmailContainer extends StatelessWidget {
  const NameEmailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
    
    child: Row(children: [
       SizedBox(width: 10,),
      CircleAvatar(radius:35,
      backgroundImage: AssetImage("assets/images/be_your_best_self.png"),
      ),
      SizedBox(width: 20,),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(AppString.wessamelsayed,style: TextStyle(
          fontSize: 20,
        ),),
        Text("Wessam@gmail.com",style: TextStyle(
          fontSize: 12,
        ),),            
      ],),
      SizedBox(width: 20,),
      Icon(Icons.edit),
      
      // IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode))
    ],),);
  }
}