// Task 6: Using Continue & Break 
// Write a loop that: 
// ●  Skips numbers divisible by 3  using  continue 
// ●  Stops at 17  using  break 
// Print the remaining numbers.

void main() {
  numbers();
}

void numbers() {
  var i = 1;
  while (true) {
    if (i % 3 == 0) {
      i++;
      continue;
    } else if (i == 17) {
      break;
    }
    print(i);
    i++;
  }
}
