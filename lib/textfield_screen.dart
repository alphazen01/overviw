import 'package:flutter/material.dart';
import 'package:project/contact_list.dart';
import 'package:project/pofile.dart';

class TextfieldScreen extends StatefulWidget {
  const TextfieldScreen({ Key? key }) : super(key: key);

  @override
  _TextfieldScreenState createState() => _TextfieldScreenState();
}

class _TextfieldScreenState extends State<TextfieldScreen> {
  bool isTap=false;
  bool isTap2=false;
  bool isTap3=false;
  TextEditingController textEditingController=TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
          ],
        ),
      ),
    );
  }
}