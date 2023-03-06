import 'dart:math';
class CalculatorBrain{


  final int height;
  final int weight;

  CalculatorBrain(this.height, this.weight);

  double getBMI(){
    double bmi = weight / pow(height/100,2);
    return bmi;
  }

  String calculateBMI(){
    return getBMI().toStringAsFixed(1);
  }

  String getBMIStatus() {
    double bmi = getBMI();
    String status = 'Normal';
    if(bmi<18.5){
      status = 'Low';
    }

    if(bmi>=25 && bmi<30){
      status = 'Overweight';
    }

    if(bmi>=30){
      status = 'Obese';
    }

    return status;
  }


  String getBMIAdvise(){
    String result = 'Keep it up! Your BMI is Nice!!!';
    double bmi = getBMI();
    if(bmi<18.5){
      result = 'Your BMI result is quite low, you should eat more and eat properly';
    }

    if(bmi>=25 && bmi<30){
      result = 'You are quite overweight, you should take care of your diet and eat healthy.';
    }

    if(bmi>=30){
      result='You are obese, please eat less and consult with the doctor';
    }

    return result;
  }

}