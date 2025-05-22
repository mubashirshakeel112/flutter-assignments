class ProductDetail {
  final String image;
  final String title;
  final String subTitle;
  final double price;
  int? quantitiy;
  String? productdesc;

  ProductDetail({
    this.quantitiy,
    this.productdesc,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}
