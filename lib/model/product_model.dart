import '../config/asset_image_paths.dart';

class AllProduct {
  String? imagePng;
  String? name;

  AllProduct({this.imagePng, this.name});
}

List<AllProduct> allProductList = [
  AllProduct(
      name: 'Lockies Shirt',
      imagePng: AssetImagePaths.proDetail),
  AllProduct(
      name: 'Black Blazer',
      imagePng: AssetImagePaths.secondgril),
  AllProduct(
      name: 'Blue Blazer',
      imagePng: AssetImagePaths.mansecod),
  AllProduct(
      name: 'Blue Shirt',
      imagePng: AssetImagePaths.manthard),
  AllProduct(
      name: 'Lockies Shirt',
      imagePng: AssetImagePaths.proDetail),
  AllProduct(
      name: 'Black Blazer',
      imagePng: AssetImagePaths.secondgril),
  AllProduct(
      name: 'Blue Blazer',
      imagePng: AssetImagePaths.mansecod),
  AllProduct(
      name: 'Blue Shirt',
      imagePng: AssetImagePaths.manthard),
];
