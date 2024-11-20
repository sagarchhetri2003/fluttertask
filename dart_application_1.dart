void main() {
  double principal = 1000; // Principal amount
  double rate = 5; // Rate of interest
  int time = 2; // Time in years

  // Calculate simple interest using named parameters
  double simpleInterest = calculateSimpleInterest(
    principal: principal,
    rate: rate,
    time: time,
  );

  print("Simple Interest is: \$${simpleInterest.toStringAsFixed(2)}");
}

// Function to calculate simple interest
double calculateSimpleInterest({
  required double principal,
  required double rate,
  required int time,
}) {
  return (principal * rate * time) / 100;
}
