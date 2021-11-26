import 'package:flutter/material.dart';
import 'package:project/button.dart';
import 'package:project/contact_list.dart';
import 'package:project/home_screen.dart';
import 'package:project/pofile.dart';
import 'package:project/textfield_screen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Profile(),
    // home: ContacList()
    // home: Button(),
    // home: HomeScreen(),
    home: TextfieldScreen(),
  ),
  );
  
}