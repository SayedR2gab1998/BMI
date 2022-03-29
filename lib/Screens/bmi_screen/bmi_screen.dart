import 'dart:math';

import 'package:bmi/Screens/bmi_result/bmi_result.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0f1f),
      appBar: AppBar(
        backgroundColor: const Color(0xff0b0f1f),
        centerTitle: true,
        title: const Text('Bmi Calculator'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration:  BoxDecoration(
                          color: isMale?const Color(0xffe7144c):const Color(0xff1b1a2e),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image.asset('assets/man.png',height: 80,),
                            const SizedBox(height: 15,),
                            const Text('Man',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration:  BoxDecoration(
                          color: isMale? const Color(0xff1b1a2e):const Color(0xffe7144c),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image.asset('assets/woman.png',height: 80,),
                            const SizedBox(height: 15,),
                            const Text('Woman',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff1b1a2e),
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children:
                 [
                  const Text('HEIGHT',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 25.0,
                       fontWeight: FontWeight.w900,
                     ),
                   ),
                   const SizedBox(height: 10.0,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children:
                      [
                       Text('${height.round()}',
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                       ),
                       const SizedBox(width: 5.0,),
                       const Text('CM',
                         style:  TextStyle(
                           fontSize: 15,
                           color: Colors.white,
                         ),
                       ),
                     ],
                   ),
                   const SizedBox(height: 10.0,),
                   Slider(
                     value: height,
                     max: 220.0,
                     min: 80.0,
                     activeColor: const Color(0xffe7144c),
                     onChanged: (value)
                     {
                       setState(() {
                         height = value;
                       });
                     }
                   ),
                 ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.00),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff1b1a2e),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                           const Text('AGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          Text('$age',
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag:' age--',
                                mini: true,
                               backgroundColor:  const Color(0xffe7144c),
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                mini: true,
                                heroTag: 'age++',
                                backgroundColor:  const Color(0xffe7144c),
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff1b1a2e),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          const Text('Weight',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          Text('$weight',
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight--',
                                mini: true,
                               backgroundColor:  const Color(0xffe7144c),
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                heroTag: 'weight++',
                                mini: true,
                                backgroundColor:  const Color(0xffe7144c),
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: const Color(0xffe7144c),
            child: MaterialButton(
              onPressed: (){
                double  result = weight / pow(height / 100, 2);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BMIResult(age: age, isMale: isMale, result: result.round())));
              },
              child: const Text('CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

