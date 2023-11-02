import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int? result;
  final bool? isMale;
  final int? Age;

  BMIResultScreen({
    @required this.result,
    @required this.Age,
    @required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        backgroundColor: Color.fromARGB(255, 32, 127, 127),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender is : ${isMale == true ? "Male" : "Female"}',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Result : ${result}",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Age : ${Age} ",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}