// Task 7: List of Maps (API-like Data Processing) 
// You have a list of  users (maps)  : 
// List<Map<String, dynamic>> users = [ 
// {"id": 1, "name": "Ali", "age": 25, "role": "admin"}, 
// {"id": 2, "name": "Sara", "age": 30, "role": "user"}, 
// {"id": 3, "name": "Ahmed", "age": 20, "role": "admin"}, 
// {"id": 4, "name": "Zara", "age": 28, "role": "user"} 
// ]; 
// ●  Write a function that  returns only admin users  .

void main() {
  List<Map<String, dynamic>> users = [
    {"id": 1, "name": "Ali", "age": 25, "role": "admin"},
    {"id": 2, "name": "Sara", "age": 30, "role": "user"},
    {"id": 3, "name": "Ahmed", "age": 20, "role": "admin"},
    {"id": 4, "name": "Zara", "age": 28, "role": "user"}
  ];

  var getAdmin = admin(users);
  print(getAdmin);
}

List<dynamic> admin(List<Map<String, dynamic>> users) {
  var listOfAdminUser = [];
  for (var user in users) {
    if (user['role'] == "admin") {
      listOfAdminUser.add(user);
    }
  }
  return (listOfAdminUser);
}
