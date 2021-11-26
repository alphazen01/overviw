import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
      child: Text("Button")
      ),
      backgroundColor: Colors.green,
      ),
      body: Container(
      width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){}, 
              child: Text("sign in"),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                elevation: 20,
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                color: Colors.black,
                width: 3,
                
                ),
                ),
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                    onPressed:(){},
                    child: Text("Log in")
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    OutlinedButton(
                      onPressed:(){}, 
                      child:Text("Log Out"),
                      style: OutlinedButton.styleFrom(
                      primary: Colors.red,
                      side: BorderSide(
                      color: Colors.green)
                      ),
                      ),
                      SizedBox(
                        width:30,
                      ),
                      ElevatedButton.icon(
                      onPressed: (){},
                     icon: Icon(Icons.facebook), 
                     label: Text("Facebook"),
                     style: ElevatedButton.styleFrom(
                     primary: Colors.teal,
                     elevation: 20,
                     shadowColor: Colors.pink,
                     shape: RoundedRectangleBorder(
                     borderRadius:BorderRadius.circular(20),
                     side: BorderSide(
                     color: Colors.black,
                     width: 3
                     ),
                     ),
                     ),
                     ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}