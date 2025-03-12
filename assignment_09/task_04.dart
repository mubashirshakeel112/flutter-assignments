// Task 4: Static Variable & Method - User Counter 
// Create a User class with: 
// ● username (String) 
// ● A static variable userCount to track the total users 
// ● A constructor that increments userCount when a new user is created 
// A static method showTotalUsers() that prints: 
// Total registered users: {userCount} 
// ●  
// ✅ Create multiple users and test showTotalUsers().

void main() {
  User user1 = User(username: "Kashif");
  User user2 = User(username: "Ali");
  User user3 = User(username: "Kamran");
  User.showTotalUsers();
}

class User {
  String? username;
  static int userCount = 0;

  User({required this.username}) {
    userCount++;
  }

  static showTotalUsers() {
    print("Total registered users: $userCount");
  }
}
