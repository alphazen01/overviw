import 'package:flutter/material.dart';
class ContacList extends StatelessWidget {
  const ContacList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
       child: Column(
         children: [
           Stack(
             children: [
               Image.asset("assets/car.jpg"),
               Positioned(
                 top: 5,
                 left: 5,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CircleAvatar(
                       radius: 30,
                       backgroundImage: AssetImage("assets/poor.jpg"),
                     ),
                     Text("Parvej Mahmud",
                     style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                       ),
                       ),
                        Text("parvejmahmud555@gmail.com",
                     style: TextStyle(
                     
                      color: Colors.white,
                       ),
                       ),
                   ],
                 ),
               ),
             ],
           ),
           ListTile(
             onTap: (){},
             leading: Icon(Icons.home),
             title: Text("Home"),
           ),
           ListTile(
             onTap: (){},
             leading: Icon(Icons.settings),
             title: Text("Settings"),
           ),
           Material(
             color: Colors.red,
             child: InkWell(
               onTap: (){
                 print("button");
               },
               child: Container(
                 width: double.infinity,
                 height: 48,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Log out")
                   ],
                 ),
               ),
             ),
           ),
         ],
       ), 
      ),
      appBar: AppBar(title: Center(
      child: Text("Contact List",
      style: TextStyle(fontSize: 28),
      ),
      ),
      actions: [
        
        
       Padding(
         padding: const EdgeInsets.only(right: 25),
         child: IconButton(onPressed: (){}, 
         icon: Icon(Icons.more_vert)),
       ),
        
      ],
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context,int index)
        {
          return Card(
            shadowColor: Colors.green,
            child: ListTile(
            onTap: (){
          
            },
            leading: CircleAvatar(
              radius: 40,
              child: Icon(Icons.person),
            ),
            title: Text("01524568874"),
            subtitle: Text("parvej"),
            trailing:Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.delete),
                Icon(Icons.arrow_back_ios)
              ],
            ),
            ),
          );
        },
        ),
    );
  }
}