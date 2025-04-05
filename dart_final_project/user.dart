class User {
  String? name;
  String? email;
  int? password;

  User({this.name, required this.email, required this.password});

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
  };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(email: json['email'], password: json['password'], name: json['name']);
  }
}
