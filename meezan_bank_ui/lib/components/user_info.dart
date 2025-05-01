class User {
  String title;
  int? subTitle;
  String? description;
  String logo;
  User({
    required this.title,
    this.subTitle,
    this.description,
    required this.logo,
  });
}