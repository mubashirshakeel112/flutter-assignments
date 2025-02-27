// Task 5: Word Frequency Counter 
// Write a function  wordFrequency(String sentence)  that: 
// ●  Counts how many times each word appears in a sentence 
// ●  Ignores  case sensitivity  (e.g., "Dart" and "dart"  are the same) 
// Test it with a sample sentence.

void main() {
  wordFrequency("Flutter is amazing. Flutter is fast!");
}

void wordFrequency(String sentence) {
  List<String> wordList = sentence.split(" ");
  Map<String, int> wordsCount = {};
  for (var i = 0; i < wordList.length; i++) {
    String word = wordList[i];
    if (wordsCount.containsKey(word)) {
      wordsCount[word] = wordsCount[word]! + 1;
    }else{
      wordsCount[word] = 1;
    }
  }
  print(wordsCount);
}
