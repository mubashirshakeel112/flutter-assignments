// Task 3: Positional and Named Parameters 
// Write a function introducePerson(String name, int age, {String? city}) that 
// prints: 
// My name is [name], I am [age] years old, and I live in [city]. 
// 1.  
// 2. The city parameter should be optional. If not provided, print "City not 
// specified". 
// Example Call: 
// introducePerson("Ali", 25, city: "Lahore"); 
// introducePerson("Sara", 30); 
// Expected Output: 
// My name is Ali, I am 25 years old, and I live in Lahore. 
// My name is Sara, I am 30 years old, and I live in City not specified.

void main() {
  introducePerson("Mubashir", 18, city: "Karachi");
  introducePerson("Ali", 25,);
}

void introducePerson(String name, int age, {String? city}) {
  print("My name is $name, I am $age years old, and I live in ${city ?? 'City not specified'}");
}
