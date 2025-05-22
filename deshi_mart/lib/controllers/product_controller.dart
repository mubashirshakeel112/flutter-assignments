import 'package:deshi_mart/components/product_detail.dart';
import 'package:deshi_mart/controllers/beverages_controller.dart';
import 'package:deshi_mart/controllers/cart_controller.dart';
import 'package:deshi_mart/controllers/search_controller.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  CartController cartController = Get.put(CartController());
  BeveragesController beveragesController = Get.put(BeveragesController());
  SearchControl searchControl = Get.put(SearchControl());

  ProductDetail? newCart;
  List<ProductDetail> favouriteCart = [];

  void addVeg(int index) {
    newCart = cartController.vegDetail[index];
    update();
  }

  void addfruit(int index) {
    newCart = cartController.fruitsDetail[index];
    update();
  }

  void addmeat(int index) {
    newCart = cartController.meatDetail[index];
    update();
  }

  void addBeverages(int index) {
    newCart = beveragesController.productDetail[index];
    update();
  }

  void addSearchItems(int index) {
    newCart = searchControl.productDetail[index];
    update();
  }

  void productIncrement() {
    newCart?.quantitiy = (newCart?.quantitiy ?? 0) + 1;
    update();
  }

  void productDecrement() {
    if ((newCart?.quantitiy ?? 1) > 1) {
      newCart?.quantitiy = (newCart?.quantitiy ?? 0) - 1;
    }
    update();
  }

  void addToFavourite() {
    if (favouriteCart.contains(newCart)) {
      favouriteCart.remove(newCart);
    } else {
      favouriteCart.add(newCart!);
    }
    update();
  }

  void addToBasket() {
    if (cartController.cart.contains(newCart)) {
      return;
    } else {
      cartController.cart.add(newCart!);
    }
    update();
  }
}
