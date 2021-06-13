import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_test1/package_test1.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String bmi = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: heightController,
            onChanged: (value) {
              if (weightController.text.isNotEmpty &&
                  heightController.text.isNotEmpty)
                setState(() {
                  bmi = formatBMI(calculateBMI(
                      double.parse(heightController.text),
                      double.parse(weightController.text)));
                });
            },
          ),
          TextField(
            controller: weightController,
            onChanged: (value) {
              if (weightController.text.isNotEmpty &&
                  heightController.text.isNotEmpty)
                setState(() {
                  bmi = formatBMI(calculateBMI(
                      double.parse(heightController.text),
                      double.parse(weightController.text)));
                  print(bmi);
                });
            },
          ),
          Text(bmi)
        ],
      ),
    );
  }
}
