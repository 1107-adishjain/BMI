  import 'dart:math';

  // ignore: camel_case_types
  class calculator {
    calculator(this.height, this.weight);

    final int height;
    final int weight;
    late double _bmi;
    String calcualteBMI() {
      _bmi = weight / pow(height / 100, 2);
      return _bmi.toStringAsFixed(1); //this will given onne decimal place:
    }

    String getResult() {
      if (_bmi >= 25) {
        return "OVERWEIGHT";
      } else if (_bmi > 18.5) {
        return "NORMAL WEIGHT";
      } else {
        return "UNDERWEIGHT";
      }
    }

    String geinterpretartion() {
      if (_bmi >= 25) {
        return "You have a higher than normal body weight. Try to exercise more.";
      } else if (_bmi >= 18.5) {
        return "You have a normal body weight good job.";
      } else {
        return "You have a lower than normal body weight. You can eat a bit more.";
      }
    }
  }
