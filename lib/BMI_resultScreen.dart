
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget{
  var BMIresult;
  int age;
  bool gender;
  result(this.BMIresult,this.age,this.gender);
  String get resultphrase{
    String resultText='';
    if(BMIresult>=30)resultText="Obese";
    else if(BMIresult>25&&BMIresult<30)resultText="Overweight";
    else if(BMIresult>=18.5&&BMIresult<=24.9)resultText="Normal";
    else resultText="Thin";
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text( "Result",style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),

      body:Container(
        width: double.infinity,
        color: Colors.black54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" Gender :  ${gender?"Male":"Female"}",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            const SizedBox(height: 10,),
            Text("Result :  ${BMIresult.round()}",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("Healthiness :  ${resultphrase}",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            const SizedBox(height: 10,),
            Text("Age     :  ${age}",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          ],
        ),
      ),
    );
  }

}