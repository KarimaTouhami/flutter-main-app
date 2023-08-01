import '../config/asset_image_paths.dart';

class AllProduct {
  String? imagePng;
  String? price;
  String? name;
  String? discount;

  AllProduct({this.imagePng, this.price, this.name, this.discount});
}

List<AllProduct> allProductList = [
  AllProduct(
      name: 'Lockies Shirt',
      price: '\$${245}',
      discount: '50%',
      imagePng: AssetImagePaths.proDetail),
  AllProduct(
      name: 'Black Blazer',
      price: '\$${534}',
      discount: '20%',
      imagePng: AssetImagePaths.secondgril),
  AllProduct(
      name: 'Blue Blazer',
      price: '\$${670}',
      discount: '30%',
      imagePng: AssetImagePaths.mansecod),
  AllProduct(
      name: 'Blue Shirt',
      price: '\$${400}',
      discount: '40%',
      imagePng: AssetImagePaths.manthard),
  AllProduct(
      name: 'Lockies Shirt',
      price: '\$${245}',
      discount: '50%',
      imagePng: AssetImagePaths.proDetail),
  AllProduct(
      name: 'Black Blazer',
      price: '\$${534}',
      discount: '20%',
      imagePng: AssetImagePaths.secondgril),
  AllProduct(
      name: 'Blue Blazer',
      price: '\$${670}',
      discount: '30%',
      imagePng: AssetImagePaths.mansecod),
  AllProduct(
      name: 'Blue Shirt',
      price: '\$${400}',
      discount: '40%',
      imagePng: AssetImagePaths.manthard),
];
