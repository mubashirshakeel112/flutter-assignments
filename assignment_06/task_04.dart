// Task 4: Required Named Parameters 
// 1. Write a function calculateBMI({required double weight, required double 
// height}) that returns BMI = weight / (height * height). 
// 2. Call this function with named arguments. 
// Example Call: 
// double bmi = calculateBMI(weight: 70, height: 1.75); 
// print(bmi);

void main() {
  double result = calculateBMI(weight: 75, height: 6.5);
  print(result.toStringAsFixed(3));
}

double calculateBMI({required double weight, required double height}) {
  double bmi = (weight / (height * height));
  return bmi;
}
