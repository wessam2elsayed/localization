// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/core/strings/strings.dart';
import 'package:localization/presentation/widgets/general_card.dart';
import 'package:localization/presentation/widgets/log_out_card.dart';
import 'package:localization/presentation/widgets/name_email_container.dart';
import 'package:localization/presentation/widgets/support_card.dart';

class HomeScreen extends StatefulWidget {

  final VoidCallback  isDarkMode;
  final bool isDark;

  const HomeScreen({super.key,
  required this.isDarkMode,
   required this.isDark,});

  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
 

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
   
   
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(onPressed: (){},
         icon:const Icon(Icons.arrow_back)),
         title:  Center(
          child:  Text(AppString.myprofile,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      actions: [IconButton(
        onPressed: 
        widget.isDarkMode,
         icon:Icon(
        widget.isDark?Icons.light_mode : Icons.dark_mode
      )
      ),
      // IconButton(
      //   onPressed: (){
      //     context.setLocale(Locale('en'));
      //     setState(() { });
      //   },
        
      //    icon:Icon(Icons.language
      // )
      // )
           ],
        
         ),

          body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20,),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [

        const NameEmailContainer(),
        const SizedBox(height: 20,),

         Text(AppString.general,         
         style: textTheme.titleLarge ),

        const GeneralCard(),
        const SizedBox(height: 40,),

          Text(AppString.support,         
         style: textTheme.titleLarge ),

         const SupportCard(),
         const SizedBox(height: 40,),

        const LogOutCard(),
          
        ],),
     ),
    
    );
  }
}