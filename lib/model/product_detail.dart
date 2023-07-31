class CartProduct {
  String imagePng;
  String productName;
  String description;
  bool? wishlist = false;

  CartProduct({
    required this.imagePng,
    required this.productName,
    required this.description,
  });
}
