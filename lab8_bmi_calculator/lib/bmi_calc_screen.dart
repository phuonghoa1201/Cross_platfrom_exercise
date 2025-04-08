import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lab8_bmi_calculator/bmi_result_screen.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({super.key});

  @override
  State<BmiCalc> createState() => BmiState();
}

class BmiState extends State<BmiCalc> {
  int age = 25;
  double height = 170;
  int weight = 80;
  bool ismale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child:

          //section one
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ismale = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: ismale ? Colors.blue : Colors.black,
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.male,
                                            color: Colors.white, size: 100.0),
                                        Text(
                                          "Male",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                ))),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ismale = false;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: ismale ? Colors.black : Colors.pink,
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.female,
                                            color: Colors.white, size: 100.0),
                                        Text(
                                          "Female",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                )))
                      ],
                    )),
              ),

              //section two
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Height",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text('${height.round()}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const Text(
                                    "cm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Slider(
                                  value: height,
                                  onChanged: (value) {
                                    setState(() {
                                      height = value;
                                    });
                                  },
                                  min: 80,
                                  max: 250),
                            ],
                          )))),
              //section three
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.black,
                                ),
                                width: 170,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    const Text(
                                      "Weight",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "$weight",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                            heroTag: "weight++",
                                            onPressed: () {
                                              setState(() {
                                                weight++;
                                              });
                                            },
                                            mini: true,
                                            child: const Icon(Icons.add),
                                            backgroundColor: const Color.fromARGB(
                                                96, 66, 61, 61)),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        FloatingActionButton(
                                          heroTag: "weight--",
                                          onPressed: () {
                                            setState(() {
                                              weight--;
                                            });
                                          },
                                          mini: true,
                                          child: const Icon(Icons.remove),
                                          backgroundColor:
                                          const Color.fromARGB(96, 66, 61, 61),
                                        )
                                      ],
                                    )
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                ))),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                              width: 170,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black,
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    "Age",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "$age",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                          heroTag: "age++",
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          mini: true,
                                          child: const Icon(Icons.add),
                                          backgroundColor:
                                          const Color.fromARGB(96, 66, 61, 61)),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      FloatingActionButton(
                                        heroTag: "age--",
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        mini: true,
                                        child: const Icon(Icons.remove),
                                        backgroundColor:
                                        const Color.fromARGB(96, 66, 61, 61),
                                      )
                                    ],
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                              )),
                        )
                      ],
                    ),
                  )),
              Container(
                width: double.infinity,
                height: 50.0,
                color: Colors.black,
                child: MaterialButton(
                    child: const Text(
                      "Calc",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      String txt ;
                      MaterialColor color ;
                      double result = weight / pow(height / 100, 2);

                      if (result > 0 && result < 19) {
                        txt = "Underweight";
                        color = Colors.orange;
                      } else if (result > 18 && result < 25) {
                        txt = "Normal";
                        color = Colors.green;
                      } else if (result > 25 && result < 30) {
                        txt = "Overweight";
                        color = Colors.yellow;
                      } else {
                        txt = "Obesity";
                        color = Colors.red;
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BmiResultScreen(
                                age: age,
                                result: result.roundToDouble(),
                                ismale: ismale,
                                color: color,
                                txt: txt),
                          ));
                    }),
              )
            ],
          ),
        ));
  }
}