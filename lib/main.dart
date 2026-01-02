import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/core/theme/app_theme.dart';
import 'package:localization/presentation/screens/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', // <-- change the path of the translation files 
      fallbackLocale: Locale('en'),
      startLocale: const Locale('ar'),

      child: MyApp()
    ),
  );

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  ThemeMode themeMode=ThemeMode.light;

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      
      debugShowCheckedModeBanner: false,
     
      theme: AppTheme.lightmode,
      darkTheme: AppTheme.darkMode,
      themeMode: themeMode,

      home: HomeScreen(
        isDarkMode: (){        
          setState(() {
              themeMode=themeMode==ThemeMode.dark?
          ThemeMode.light:ThemeMode.dark;
          });
        }, 
      isDark: themeMode==ThemeMode.dark,
       
       
      ),
    );
  }
}