class Student {
  String? name;
  int? id;
  String? course;

  Student({required this.name, required this.id, required this.course});

  void showDetail() {
    print("Name: $name, Id: $id, Course: $course");
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'course': course,
    };
  }

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      name: json['name'],
      id: json['id'],
      course: json['course'],
    );
  }
}