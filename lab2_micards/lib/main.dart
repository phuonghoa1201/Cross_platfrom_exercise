import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/hen.png'),
              ),
              Text(
                'Bui Thi Phuong Hoa',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Ex2: Mi card flutter exercise',
                style: TextStyle(color: Colors.grey.shade700,fontSize: 15),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                    color:Colors.white
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    title:Text('123 456 7324', style: TextStyle(fontSize: 15) ,)

                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    title:Text('hoa@gmail.com', style: TextStyle(fontSize: 15) ,)
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    title:Text('hoabui', style: TextStyle(fontSize: 15) ,)
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}