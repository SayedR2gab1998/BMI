import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  const BMIResult({Key? key,required this.age,required this.isMale,required this.result}) : super(key: key);
  final int result;
  final  bool isMale;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1a2e),
      appBar: AppBar(
        elevation: 0.0,
          backgroundColor: const Color(0xff0b0f1f),
        title:const Text('BMI Result',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text('Gender: ${isMale? 'Male':'Female'}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 24.0
              ),
            ),
            const SizedBox(height: 15.0,),
            Text('Result : $result',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0
              ),
            ),
            const SizedBox(height: 15.0,),
            Text('Age: $age',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}

