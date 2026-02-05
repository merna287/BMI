import 'package:bmi/data/bmi_data.dart';
import 'package:bmi/home_screen.dart';
import 'package:bmi/widgets/custom_app_bar.dart';
import 'package:bmi/widgets/inkWell_constructor_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key , required this.bmiData});
  final BmiData bmiData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(height: 25,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Text(
                      bmiData.resultBmi,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: bmiData.categoryColor,
                      ),
                    ),
                    Text(
                      bmiData.calculateBmi.round().toString(),
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      bmiData.healthAdvice,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: bmiData.categoryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWellConstructorWidget(
        title: 'Re - Calculatet',
        onTap: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
      ),
    );
  }
}

