import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({super.key,
   required this.txt,
    required this.icon,  this.backicon});

  final String txt;
  final IconData icon;
  final IconData? backicon;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 20,),
       Icon(icon),
       const SizedBox(width: 20,),
       Text(txt),
       const Spacer(),
       Icon(backicon)
                  
        ],);
  }
}