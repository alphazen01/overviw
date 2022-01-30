import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project/button.dart';
import 'package:project/contact_list.dart';
import 'package:project/custom_theme.dart';
import 'package:project/home_screen.dart';
import 'package:project/pofile.dart';
import 'package:project/textfield_screen.dart';
void main() {
  runApp(
    GetMaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Profile(),
    // home: ContacList()
    // home: Button(),
    // home: HomeScreen(),
    home: TextfieldScreen(),
  ),
  );
  
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "parvej",
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: TextfieldScreen(),
    );
  }
}