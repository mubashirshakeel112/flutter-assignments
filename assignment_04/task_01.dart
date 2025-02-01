// Task 1: Word Frequency Counter
// 1. Write a program to count the frequency of each word in a given sentence.
// ○ Ignore case and punctuation.
// Example Input:

// Sentence: "Flutter is amazing. Flutter is fast!"
// Output:
// Frequency: {flutter: 2, is: 2, amazing: 1, fast: 1}

void main() {
  String s = "Flutter is amazing. Flutter is fast!";

  var clean = s.toLowerCase().replaceAll(RegExp(r'[^\w\s]'), '');
  List<String> words = clean.split(RegExp(r'\s+'));

  Map<String, int> wordFrequency = {};

  for (String word in words) {
    if (word.isNotEmpty) {
      wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
    }
  }

  print("Frequency: $wordFrequency");
}
