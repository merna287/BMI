import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenderCard extends StatelessWidget {
  GenderCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
    required this.isSelected,
  });
  String imagePath;
  String title;
  void Function()? onTap;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Color(0xff24263B) : Color(0xff333244),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 20),
                child: Image.asset(imagePath),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8B8C9E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}