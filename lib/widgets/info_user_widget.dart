import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoUserWidget extends StatelessWidget {
  InfoUserWidget({
    super.key,
    required this.title,
    required this.value,
    required this.addTagBtn,
    required this.removeBtn,
    this.onPressedAdd,
    this.onPressedRemove,
  });
  String title;
  double value;
  String addTagBtn;
  String removeBtn;
  void Function()? onPressedAdd;
  void Function()? onPressedRemove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff333244),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Color(0xff888C9E),
              ),
            ),
            SizedBox(height: 5),
            Text(
              value.toInt().toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: removeBtn,
                      backgroundColor: Color(0xff8B8C9E),
                      shape: CircleBorder(),
                      onPressed: onPressedRemove,
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: addTagBtn,
                      backgroundColor: Color(0xff8B8C9E),
                      shape: CircleBorder(),
                      onPressed: onPressedAdd,
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
