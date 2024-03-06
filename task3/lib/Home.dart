import 'package:flutter/material.dart';
import 'package:task3/myContainer/widgets/male_femaleWidget.dart';

import 'myContainer/widgets/CalculateWidget.dart';
import 'myContainer/widgets/heightWidget.dart';
import 'myContainer/widgets/weight_ageWidget.dart';

class Home extends StatefulWidget {
  Home({super.key});

   String title="BMI Calculator";

  weight_ageWidget weight = weight_ageWidget(
  type: "Weight",
  padding: EdgeInsets.symmetric(horizontal: 20),
  );

  weight_ageWidget age=weight_ageWidget(
  type: "Age",
  padding: EdgeInsets.symmetric(horizontal: 40),
  );


  Male_FemaleWidget MaleWidget = Male_FemaleWidget(
    gender: "Male",
    genderIcon: Icons.male,
    padding: EdgeInsets.symmetric(horizontal: 40),
  );

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.MaleWidget,
                Male_FemaleWidget(
                  gender: "Female",
                  genderIcon: Icons.female,
                ),
              ],
            ),
            HeightWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.weight,
                widget.age,
              ],
            ),
            CalculateWidget(weight: widget.weight.value,),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
