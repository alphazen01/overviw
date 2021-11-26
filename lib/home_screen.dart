import 'package:flutter/material.dart';
import 'package:project/button.dart';
import 'package:project/contact_list.dart';
import 'package:project/pofile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List screens=[
    Container(
      color: Colors.green,
    ),
     Container(
      color: Colors.red,
    ),
    Profile(),
    Button()
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Bottom Navigation Bar"),
      ),
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items:[
      BottomNavigationBarItem(
      icon:Icon(Icons.home),
      label: "Home"
      ),
       BottomNavigationBarItem(
      icon:Icon(Icons.settings),
      label: "Settings"
      ),
       BottomNavigationBarItem(
      icon:Icon(Icons.person),
      label: "Profile"
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.radio_button_checked),
      label: "Button"
      ),
      
      ],
      currentIndex: selectedIndex,
      onTap:(int index){
        setState(() {
         selectedIndex=index; 
        }
        );
      }, 
      ),
    );
  }
}