import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../bmi_calculetor/bmipage.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: BMI_Calculetor(),
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => HomePage(),
      //   '/second': (context) => SecondApp()
      // },
    );
  }
}

class BMI_Calculetor extends StatefulWidget {

  @override
  _BMI_CalculetorState createState() => _BMI_CalculetorState();
}

class _BMI_CalculetorState extends State<BMI_Calculetor> {
  // final _textControler = new TextEditingController();

  // @override
  // void dispose() {
  //   _textControler.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BmiPage()
    );
  }
}


