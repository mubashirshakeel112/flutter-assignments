import 'package:deshi_mart/components/product_detail.dart';
import 'package:deshi_mart/controllers/cart_controller.dart';
import 'package:get/get.dart';

class SearchControl extends GetxController {
  CartController cartController = Get.put(CartController());

  final List<ProductDetail> productDetail = [
    ProductDetail(
      image: "assets/images/red_egg.png",
      title: "Egg Chicken Red",
      subTitle: "4pcs, Price",
      price: 1.99,
      quantitiy: 1,
      productdesc: "Red eggs are often hard-boiled and dyed, commonly used in cultural celebrations. They may provide a good source of protein and essential nutrients. A wholesome and symbolic food choice. Enjoy as part of a varied and nutritious diet.",
    ),
    ProductDetail(
      image: "assets/images/white_egg.png",
      title: "Egg Chicken White",
      subTitle: "180g, Price",
      price: 1.50,
      quantitiy: 1,
      productdesc: "White eggs are a versatile and nutrient-rich food. They may support muscle health with high-quality protein. Often used in both cooking and baking. Enjoy as part of a balanced and healthful diet."
    ),
    ProductDetail(
      image: "assets/images/egg_pasta.png",
      title: "Egg Pasta",
      subTitle: "30gm, Price",
      price: 15.99,
      quantitiy: 1,
      productdesc: "Egg pasta is a rich and hearty pasta made with wheat flour and eggs. It may provide energy and essential nutrients like protein and B vitamins. Ideal for pairing with sauces or vegetables. Enjoy as part of a wholesome, balanced meal."
    ),
    ProductDetail(
      image: "assets/images/egg_noodle.png",
      title: "Egg Noodles",
      subTitle: "2L, Price",
      price: 15.99,
      quantitiy: 1,
      productdesc: "Egg noodles are made with wheat flour and eggs, offering a tender texture and rich flavor. They may provide a good source of protein and carbohydrates for energy. Perfect for soups, stir-fries, or pasta dishes. Enjoy as part of a balanced and satisfying meal."
    ),
    ProductDetail(
      image: "assets/images/mayonnaise_eggless.png",
      title: "Mayonnais Eggless",
      subTitle: "2L, Price",
      price: 15.99,
      quantitiy: 1,
      productdesc: "Eggless mayonnaise is a creamy, dairy-free condiment made without eggs. It may be a great alternative for those with dietary restrictions or allergies. Adds rich flavor and smooth texture to sandwiches and salads. Enjoy as part of a varied and mindful diet.",
    ),
    ProductDetail(
      image: "assets/images/egg_noodle_2.png",
      title: "Egg Noodles",
      subTitle: "2L, Price",
      price: 15.99,
      quantitiy: 1,
      productdesc: "Egg noodles are made with wheat flour and eggs, offering a tender texture and rich flavor. They may provide a good source of protein and carbohydrates for energy. Perfect for soups, stir-fries, or pasta dishes. Enjoy as part of a balanced and satisfying meal.",
    ),
  ];

  ProductDetail? searchCart;

  void addSearchItem(int index) {
    searchCart = productDetail[index];
    update();
  }

  void addToCart() {
    if (cartController.cart.contains(searchCart)) {
      return;
    } else {
      cartController.cart.add(searchCart!);
    }
  }
}
