import 'dart:math';

import 'package:flutter/material.dart';

import 'BMI_resultscreen.dart';

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double valuechange = 120.0;
  int weight = 60;
  int age = 20;
  bool isblack = true;
  bool presscolor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isblack = !isblack;
              });
            },
            icon: Icon(
              Icons.brightness_4_outlined,
              color: isblack ? Colors.white : Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "BMI calculator",
          style: TextStyle(
              color: isblack ? Colors.white : Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: isblack ? Colors.black : Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: isblack ? Colors.black : Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          presscolor = true;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: presscolor ? Colors.teal : Color(0xff1d2626),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 70,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "male",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          presscolor = false;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: presscolor ? Color(0xff1d2626) : Colors.teal,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff1d2626),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${valuechange.round()}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "CM",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                        min: 0,
                        max: 200,
                        activeColor: Colors.teal,
                        inactiveColor: Colors.grey,
                        value: valuechange,
                        onChanged: (double value) {
                          setState(() {
                            valuechange = value;
                          });
                        },
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff1d2626),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WEIGHT",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$weight",
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: "btn4",                                       // give to every floating Button to avoid Confusion
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: "btn3",
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      if(weight>0)
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff1d2626),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$age",
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: "btn2",
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: "btn1",
                                  backgroundColor: Colors.teal,
                                  onPressed: () {
                                    setState(() {
                                       if(age>0)
                                         age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.teal[800],//Color(0xff73032a),
              child: Center(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        var resu = (weight / pow(valuechange / 100, 2));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => result(resu, age, presscolor,isblack)));
                      });
                    },
                    child: const Text(
                      "Calculate",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
