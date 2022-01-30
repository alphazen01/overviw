import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String? name;
  final int? age;
  const Profile({ this.name,this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert),
          ),
          
        ],
      title: Text("Parvej",
      style: TextStyle(
      fontSize: 24,
      fontStyle:FontStyle.italic,
      fontWeight: FontWeight.w700,
      ),
      ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 40,
          backgroundImage: AssetImage("assets/car.jpg"),
          ),
          Text(
            "$name",
            style:TextStyle(color: Colors.white,
            fontSize: 24),
            
            ),
            Text(
              "Flutter eveloper",
              style: TextStyle(color: Colors.white,
              letterSpacing: 5,
              ),
              ),
              Divider(
                color: Colors.white.withOpacity(0.5),
                indent:180,
                endIndent: 180,
              ),
              SizedBox(
                height: 10,
              ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 120),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(2),
                   color: Colors.white,
                 ),
                 child: Row(
                   children: [
                     Icon(Icons.phone),
                     SizedBox(
                       width: 10,
                     ),
                     Text("0152468794")
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 10,
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 120),
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius:BorderRadius.circular(2)
                 ),
                  child: Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 10,
                      ),
                      Text("onekbeshigorib@gmail.com")
                    ],
                  ),
               ),
             ),
        ],
      ),);
  }
}