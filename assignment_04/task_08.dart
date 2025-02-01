// Task 8: Palindrome Checker (Advanced)
// Write a program to check if a sentence is a palindrome (ignoring spaces, punctuation, and
// case).
// Example Input:
// Sentence: "A man, a plan, a canal: Panama"
// Output:
// Palindrome: Yes

void main() {
  String sentence = "A man, a plan, a canal: Panama";
  String cleanedSentence =
      sentence.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  String reversedSentence = cleanedSentence.split('').reversed.join();
  String y = "Yes";
  String N = "No";
  if (cleanedSentence == reversedSentence) {
    print("Palindrome: $y");
  } else {
    print("Palindrome: $N");
  }
}
