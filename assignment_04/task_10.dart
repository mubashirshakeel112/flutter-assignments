// Task 10: Character Frequency in a String
// Write a program to count the frequency of each character in a string (ignore spaces).
// Example Input:
// String: "hello world"
// Output:
// Frequency: {h: 1, e: 1, l: 3, o: 2, w: 1, r: 1, d: 1}

void main() {
  String input = "hello world";

  String cleanedInput = input.replaceAll(' ', '');

  Map<String, int> frequency = {};

  for (var char in cleanedInput.split('')) {
    frequency[char] = (frequency[char] ?? 0) + 1;
  }

  print("Frequency: $frequency");
}