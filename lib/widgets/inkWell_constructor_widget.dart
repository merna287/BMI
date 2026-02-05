import 'package:flutter/material.dart';

class InkWellConstructorWidget extends StatefulWidget {
  const InkWellConstructorWidget({super.key, required this.title ,required this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  State<InkWellConstructorWidget> createState() => _InkWellConstructorWidgetState();
}

class _InkWellConstructorWidgetState extends State<InkWellConstructorWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 90,
        decoration: BoxDecoration(color: Color(0xFFE83D67)),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}