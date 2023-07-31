class CartProduct {
  String imagePng;
  String productName;
  String price;
  String subtext;
  int? quantity = 1;
  bool? wishlist = false;
  bool? isIncrement = false;
  bool? decrement = false;

  CartProduct(
      {required this.imagePng,
      required this.productName,
      required this.price,
      required this.subtext,
      this.quantity,
      this.wishlist,
      this.isIncrement,
      this.decrement});
}
