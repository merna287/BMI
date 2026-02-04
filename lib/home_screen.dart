import 'package:bmi/data/bmi_data.dart';
import 'package:bmi/result_screen.dart';
import 'package:bmi/widgets/custom_app_bar.dart';
import 'package:bmi/widgets/gender_card.dart';
import 'package:bmi/widgets/info_user_widget.dart';
import 'package:bmi/widgets/inkWell_constructor_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double height = 150;
  double wight = 60;
  double age = 26;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          spacing: 25,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  GenderCard(
                    imagePath: "assets/icons/male.png",
                    title: "Male",
                    isSelected: isMale,
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                  ),
                  GenderCard(
                    imagePath: "assets/icons/Female.png",
                    title: "Female",
                    isSelected: !isMale,
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff333244),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff888c9E),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                        children: [
                          TextSpan(text: "${height.toInt()}"),
                          TextSpan(
                            text: "CM",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Slider(
                      value: height,
                      activeColor: Color(0xffE83D67),
                      inactiveColor: Color(0xffFFFFFF),
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                      min: 20,
                      max: 200,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  InfoUserWidget(
                    title: "Weight",
                    value: wight,
                    onPressedAdd: () {
                      setState(() {
                        wight++;
                      });
                    },
                    onPressedRemove: () {
                      setState(() {
                        if (wight > 0) wight--;
                      });
                    }, addTagBtn: 'btn1', removeBtn: 'btn2',
                  ),
                  SizedBox(width: 9),
                  InfoUserWidget(
                    title: "Age",
                    value: age,
                    onPressedAdd: () {
                      setState(() {
                        age++;
                      });
                    },
                    onPressedRemove: () {
                      if (age > 2) {
                        age--;
                        setState(() {});
                      }
                    }, addTagBtn: 'btn3', removeBtn: 'btn4',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWellConstructorWidget(title: 'Calculate',
        onTap: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => ResultScreen(bmiData: BmiData(isMale: isMale, height: height, wight: wight, age: age),)));
        },
      ),
    );
  }
}






