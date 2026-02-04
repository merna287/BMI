import 'dart:math';
import 'dart:ui';


class BmiData {
  BmiData({
    required this.isMale,
    required this.height,
    required this.wight,
    required this.age,
  });

  bool isMale;
  double height;
  double wight;
  double age;

  double get calculateBmi => wight / pow(height / 100, 2);

  String get resultBmi {
    if (calculateBmi < 18.5) {
      return 'Underweight';
    } else if (calculateBmi < 25) {
      return 'Normal';
    } else if (calculateBmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color get categoryColor {
    switch (resultBmi) {
      case 'Underweight':
        return const Color(0xFF3F51B5);
      case 'Normal':
        return const Color(0xFF4CAF50);
      case 'Overweight':
        return const Color(0xFFFF9B00);
      case 'Obese' :  
        return const Color(0xFFF44336);
      default:
        return const Color(0xFF9E9E9E);
    }
  }

  String get healthAdvice {
  switch (resultBmi) {
    case 'Underweight':
      return 'You are underweight. Try to eat more nutritious food and gain some healthy weight.';
    case 'Normal':
      return 'Great! Your weight is normal. Keep maintaining a healthy lifestyle.';
    case 'Overweight':
      return 'You are overweight. Consider exercising regularly and eating a balanced diet.';
    case 'Obese':
      return 'You are in the obese range. It is recommended to consult a doctor and follow a strict health plan.';
    default:
      return 'No advice available.';
    }
  }

}
