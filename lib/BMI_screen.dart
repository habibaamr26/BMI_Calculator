
import 'dart:math';

import 'package:flutter/material.dart';

import 'BMI_resultScreen.dart';


class BMI extends StatefulWidget{
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double valuechange=120.0;
  int weight=60;
  int age=20;

  bool presscolor= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("BMI calculator"),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),

      body: Container(
        color: Colors.black,
        child:  Column(
          children: [
            Expanded(
              child: Row(
                children:[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          presscolor=true;
                        });
                      },
                      child: Container(
                        margin:const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color:presscolor?Colors.blue:Colors.grey[400],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,size: 70,color: Colors.white,),
                            SizedBox(height: 15,),
                            Text("male",style: TextStyle(color: Colors.white,fontSize: 25,
                                fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),


                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          presscolor=false;
                        });
                      },
                      child: Container(
                        margin:const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color:presscolor?Colors.grey[400]:Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,size: 70,color: Colors.white,),
                            SizedBox(height: 15,),
                            Text("Female",style: TextStyle(color: Colors.white,fontSize: 25,
                                fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Expanded(child:
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[400],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("${valuechange.round()}",
                        style:const TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                      const Text("CM",
                        style:TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Slider(
                    min: 0,
                    max: 200,
                    value: valuechange,
                    onChanged:
                        (double value) {
                      setState(() {
                        valuechange=value;
                      });
                    },

                  ),
                ],
              ),
            )

            ),


            Expanded(child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin:const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("WEIGHT",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey
                        ),),
                        SizedBox(height: 10,),
                        Text("$weight",style:const TextStyle(
                            fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white
                        ),),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed:(){
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,
                            ),

                            const SizedBox(width: 10,),
                            FloatingActionButton(
                              onPressed:(){
                                setState(() {
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
                    margin:const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Age",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey
                        ),),
                        const SizedBox(height: 10,),
                        Text("$age",style:const TextStyle(
                            fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white
                        ),),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed:(){
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,

                            ),

                            const  SizedBox(width: 10,),
                            FloatingActionButton(
                              onPressed:(){
                                setState(() {
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
              color: Colors.pink,

              child: Center(child:
              TextButton( onPressed: () {
                setState(() {

                  var resu= (weight/pow(valuechange/100, 2)) ;
                  Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>result(resu,age,presscolor)));
                });
              },
                child:const Text( "Calculate",style:
                TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),

              )
              ),
            )


          ],
        ),
      ),
    );
  }
}