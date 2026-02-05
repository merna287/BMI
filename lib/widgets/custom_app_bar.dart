import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff24263B),
      iconTheme: IconThemeData(color: Color(0xff24263B) , size: 30),
      title: Text(
        "BMI Calculator",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xffFFFFFF),
        ),
      ),
      centerTitle: true,
      elevation: 150,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
