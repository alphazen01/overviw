import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/contact_list.dart';
import 'package:project/pofile.dart';
import 'package:project/theme_controller.dart';

class TextfieldScreen extends StatefulWidget {
  const TextfieldScreen({ Key? key }) : super(key: key);

  @override
  _TextfieldScreenState createState() => _TextfieldScreenState();
}

class _TextfieldScreenState extends State<TextfieldScreen> {
  bool isTap=false;
  bool isTap2=false;
  bool isTap3=false;
  final ThemeController themeController=Get.put(ThemeController());
  TextEditingController textEditingController=TextEditingController();



TextEditingController _dobController = TextEditingController();
  Future<void> _selectDateFromPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year - 20),
        firstDate: DateTime(DateTime.now().year - 30),
        lastDate: DateTime(DateTime.now().year));
    if (picked != null)
      setState(() {
        _dobController.text = "${picked.day}/ ${picked.month}/ ${picked.year}";
      });
  }




 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       actions: [
         ObxValue(
           (data)=> Switch(
             value: themeController.isDark.value, 
             onChanged: (value){
               themeController.isDark.value=value;
               themeController.changeAppTheme( themeController.isDark.value);
             },
            ),
            false.obs
         )
       ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            children: [
              TextField(
               
                onTap: (){
                  setState(() {
                  isTap=true;
                  isTap2=false;
                  isTap3=false;   
                  });
                },
                
              decoration: InputDecoration(
                hintText: "Enter your name",
                labelText:"Your name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width:2
                  ),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2
                  ),
                ),
                prefixIcon: Icon(Icons.person,
                color:isTap?Colors.green:Colors.red ,
                ),
              ),  
              ),
              SizedBox(
                height: 20,
              ),
               TextField(
                 
                onTap: (){
                  setState(() {
                  isTap=false;
                  isTap2=true;
                  isTap3=false;  
                  });
                },
               
               
              decoration: InputDecoration(
                hintText: "Enter your gamil",
                labelText:"Gmail",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width:2
                  ),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2
                  ),
                ),
                prefixIcon: Icon(Icons.person,
                color:isTap2?Colors.green:Colors.red ,
                ),
              ),  
              ),
              SizedBox(
                height: 20,
              ),
               TextField(
                 controller: textEditingController,
                onTap: (){
                  setState(() {
                   isTap=false;
                  isTap2=false;
                  isTap3=true;   
                  });
                },
                 onChanged: (String name){
                  setState(() {
                    
                  });
                },
               
                keyboardType: TextInputType.text,
                obscureText: true,
                obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Enter your password",
                labelText:"Password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width:2
                  ),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2
                  ),
                ),
                prefixIcon: Icon(Icons.person,
                color:isTap3?Colors.green:Colors.red ,
                ),
                
              ),  
              ),
              textEditingController.text.isNotEmpty?Text(textEditingController.text):Text("show"),
             
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    
                    onPressed: (){}, 
                    child: Text("forgot password?",
                    // textAlign: TextAlign.end,
                    ),
                    ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 primary: Colors.blue 
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Profile(name: textEditingController.text,age: 25,)));
                }, 
                child: Text("Log in")
                ),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                 primary: Colors.blue 
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>ContacList()));
                }, 
                child: Text("Log in")
                ),
                TextFormField(
                  controller: _dobController,
                decoration: InputDecoration(
                  hintText: "Date of Birth",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                    suffixIcon: IconButton(
                      onPressed: () => _selectDateFromPicker(context),
                      icon: Icon(Icons.calendar_today_outlined),
                    ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Colors.red
                    )
                  ),
                  // disabledBorder: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}