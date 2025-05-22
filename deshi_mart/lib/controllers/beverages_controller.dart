import 'package:deshi_mart/components/product_detail.dart';
import 'package:deshi_mart/controllers/cart_controller.dart';
import 'package:get/get.dart';

class BeveragesController extends GetxController {
  CartController cartController = Get.put(CartController());
  final List<ProductDetail> productDetail = [
    ProductDetail(
      image: "assets/images/diet_coke.png",
      title: "Diet Coke",
      subTitle: "355ml, Price",
      price: 1.99,
      quantitiy: 1,
      productdesc: "Diet Coke is a sugar-free, calorie-free soft drink with a crisp cola taste. It may be a lighter option for those watching their sugar intake. Enjoy chilled for a refreshing, fizzy",
    ),
    ProductDetail(
      image: "assets/images/sprite_can.png",
      title: "Sprite Can",
      subTitle: "325ml, Price",
      price: 1.50,
      quantitiy: 1,
      productdesc: "Sprite is a clear, lemon-lime flavored soft drink. It may help refresh you on a hot day. Best enjoyed chilled for a crisp and fizzy experience. Consume occasionally as part of a balanced lifestyle.",
    ),
    ProductDetail(
      image: "assets/images/apple_grapes_juice.png",
      title: "Apple & Grape Juice",
      subTitle: "2L, Price",
      price: 15.99,
      quantitiy: 1,
      productdesc: "Apple & Grape Juice is a naturally sweet blend of two delicious fruits. It may provide a source of antioxidants and vitamin C. A refreshing choice for any time of day. Best enjoyed chilled as part of a balanced and varied diet.",
    ),
    ProductDetail(
      image: "assets/images/orange_juice.png",
      title: "Orange Juice",
      subTitle: "2L, Price",
      price: 15.99,
      quantitiy: 1,
      productdesc: "Orange juice is a rich source of vitamin C. It may help support immune health and hydration. Naturally tangy and refreshing, it's a great start to your day. Enjoy as part of a nutritious and balanced diet.",
    ),
    ProductDetail(
      image: "assets/images/coca_cola.png",
      title: "Coca Cola Can",
      subTitle: "325ml, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc: "Coca-Cola is a classic cola-flavored soft drink with a bold, bubbly taste. Often enjoyed on special occasions or with meals. Best served chilled for a refreshing experience. Consume in moderation as part of a balanced lifestyle.",
    ),
    ProductDetail(
      image: "assets/images/pepsi.png",
      title: "Pepsi Can ",
      subTitle: "330ml, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc: "Pepsi is a bold and refreshing cola-flavored soft drink. Known for its smooth, sweet taste and fizzy kick. Best enjoyed cold, especially with meals or on the go. Consume occasionally as part of a balanced lifestyle.",
    ),
  ];

  ProductDetail? beveragesCart;

  void addProduct(int index) {
    beveragesCart = productDetail[index];
    print(beveragesCart!.title);
    update();
  }

  void addToCart() {
    if (cartController.cart.contains(beveragesCart)) {
      return;
    } else {
      cartController.cart.add(beveragesCart!);
    }
    update();
  }
}
