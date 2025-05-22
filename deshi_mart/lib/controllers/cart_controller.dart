import 'package:deshi_mart/components/product_detail.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<ProductDetail> fruitsDetail = [
    ProductDetail(
      image: "assets/images/banana.png",
      title: "Organic Banana",
      subTitle: "12pcs, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:
          "Bananas are a naturally sweet fruit rich in potassium and fiber. They may help support energy and digestive health. A convenient and tasty snack any time of the day. Enjoy as part of a balanced and nutritious diet.",
    ),
    ProductDetail(
      image: "assets/images/apple.png",
      title: "Red Apple",
      subTitle: "1kg, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    ProductDetail(
      image: "assets/images/grapes.png",
      title: "Grapes",
      subTitle: "1kg, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:"Grapes are juicy, sweet fruits packed with antioxidants and vitamins. They may support heart health and hydration. Perfect as a fresh snack or in salads. Enjoy as part of a wholesome and varied diet.",
    ),
  ];

  List<ProductDetail> vegDetail = [
    ProductDetail(
      image: "assets/images/bell_pepper_red.png",
      title: "Bell Pepper Red",
      subTitle: "1kg, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:
          "Red bell peppers are high in vitamin C. Red bell peppers may support immune health. Red bell peppers may be good for eye health. Red bell peppers are low in calories. As part of a healthful and varied diet.",

    ),
    ProductDetail(
      image: "assets/images/ginger.png",
      title: "Ginger",
      subTitle: "250gm, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:"Ginger is a spicy root known for its natural anti-inflammatory properties. It may help support digestion and soothe nausea. Commonly used fresh or dried in cooking and teas. Include as part of a healthy and flavorful diet."
    ),
    ProductDetail(
      image: "assets/images/garlic.png",
      title: "Garlic",
      subTitle: "1kg, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:"Garlic is a flavorful bulb known for its potential immune-boosting and heart health benefits. It may support healthy blood pressure and cholesterol levels. Widely used to enhance the taste of savory dishes. Enjoy as part of a balanced and nutritious diet."
    ),
  ];

  List<ProductDetail> meatDetail = [
    ProductDetail(
      image: "assets/images/beef.png",
      title: "Beef Bone",
      subTitle: "1kg, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:"Beef is a rich source of high-quality protein and essential nutrients like iron and B vitamins. It may support muscle growth and overall energy. Best enjoyed cooked to your preference as part of a balanced diet."
    ),
    ProductDetail(
      image: "assets/images/chicken.png",
      title: "Broiler Chicken",
      subTitle: "1kg, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:"Chicken is a lean source of high-quality protein. It may help support muscle health and provide essential vitamins like B6. Versatile and easy to prepare in many dishes. Enjoy as part of a balanced and nutritious diet."
    ),
    ProductDetail(
      image: "assets/images/mutton.png",
      title: "mutton Bone",
      subTitle: "1kg, Price",
      price: 4.99,
      quantitiy: 1,
      productdesc:"Mutton is the meat from mature sheep, rich in protein and essential minerals like iron and zinc. It may support muscle repair and immune function. Best enjoyed cooked slowly for tender, flavorful meals. Include as part of a balanced and varied diet."
    ),
  ];

  List<ProductDetail> cart = [];

  void removeCartItem(int index) {
    if (cart.isNotEmpty) {
      cart.remove(cart[index]);
    }
    update();
  }

  void addtocart(int index) {
    if (cart.contains(fruitsDetail[index])) {
      // cart.remove(fruitsDetail[index]);
      return;
    } else {
      cart.add(fruitsDetail[index]);
    }
    update();
  }

  void addvegtocart(int index) {
    if (cart.contains(vegDetail[index])) {
      // cart.remove(vegDetail[index]);
      return;
    } else {
      cart.add(vegDetail[index]);
    }
    update();
  }

  void addmeattocart(int index) {
    if (cart.contains(meatDetail[index])) {
      // cart.remove(meatDetail[index]);
      return;
    } else {
      cart.add(meatDetail[index]);
    }
    update();
  }

  void increment(int index) {
    cart[index].quantitiy = (cart[index].quantitiy ?? 0) + 1;
    update();
  }

  void decrement(int index) {
    if (cart[index].quantitiy! > 1) {
      cart[index].quantitiy = (cart[index].quantitiy ?? 0) - 1;
    }
    update();
  }
}
