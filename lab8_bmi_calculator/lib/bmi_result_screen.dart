import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final int age;
  final double result;
  final bool ismale;
  final String txt;
  final MaterialColor color ;


  BmiResultScreen(
      {super.key,
        required this.age,
        required this.result,
        required this.ismale,
        required this.txt,
        required this.color
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Result"),
          backgroundColor: Colors.black,
        ),
        body: Container(
            color: Color.fromARGB(255, 0, 0, 0),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                        const Color.fromARGB(255, 6, 6, 6).withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset:
                        const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color.fromARGB(18, 255, 248, 248),
                    borderRadius: BorderRadius.circular(250)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gender : ${ismale ? "Male" : "Female"}",
                        style:
                        const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 80.0,
                      ),
                      Text(
                        "Age : $age",
                        style:
                        const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 80.0,
                      ),
                      Text(
                        "BMI : $result",
                        style:
                        const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        "$txt",style: TextStyle(color:color,fontSize: 30,fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            ])));
  }
}