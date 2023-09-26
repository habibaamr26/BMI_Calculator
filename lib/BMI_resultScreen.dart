import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  var BMIresult;
  int age;
  bool gender;
  bool isblack;
  result(this.BMIresult, this.age, this.gender,this.isblack);
  String get resultphrase {
    String resultText = '';
    if (BMIresult >= 30)
      resultText = "Obese";
    else if (BMIresult > 25 && BMIresult < 30)
      resultText = "Overweight";
    else if (BMIresult >= 18.5 && BMIresult <= 24.9)
      resultText = "Normal";
    else
      resultText = "Thin";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  isblack ? Colors.black : Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon:Icon( Icons.arrow_back,color: isblack ? Colors.white : Colors.black ,),),
        title:  Text(
          "Result",
          style: TextStyle(fontSize: 30,color:  isblack ? Colors.white : Colors.black,),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color:   isblack ? Colors.black : Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " Gender :  ${gender ? "Male" : "Female"}",
              style:  TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: isblack ? Colors.white : Colors.black,),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Result :  ${BMIresult.round()}",
              style:  TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color:  isblack ? Colors.white : Colors.black,),
            ),
            Text(
              "Healthiness :  ${resultphrase}",
              style:  TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color:  isblack ? Colors.white : Colors.black,),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Age     :  ${age}",
              style:  TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: isblack ? Colors.white : Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}
