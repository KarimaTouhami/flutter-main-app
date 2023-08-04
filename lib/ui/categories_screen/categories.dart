import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/categories_screen/widget/appbar_common.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/font_family.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // A list to store the categories fetched from the API
  List<dynamic> categories = [];
  
  get http => null;

  @override
  void initState() {
    super.initState();
    // Call the function to fetch categories when the widget is loaded
    _fetchCategories();
  }

// Function to fetch categories from the API
  void _fetchCategories() async {
    final String storeUrl = "https://www.italiamachines.com";
    final String consumerKey = "ck_e97c1203e673f06215aae7f42c436148d182a4eb";
    final String consumerSecret = "cs_be09c2e27360d5b7eb635c82ee72f440289d7cda";

    try {
      // Fetch categories using the WooCommerce API
      var response = await http.get(
        Uri.parse('$storeUrl/wp-json/wc/v3/products/categories?per_page=100'),
        headers: {
          'Authorization': 'Basic ' + base64Encode(utf8.encode('$consumerKey:$consumerSecret')),
        },
      );

      if (response.statusCode == 200) {
        // Parse the response and store the categories in the 'categories' list
        List<dynamic> fetchedCategories = json.decode(response.body);
        setState(() {
          categories = fetchedCategories;
        });
        print('Categories: $categories'); // Debugging
      } else {
        print('API Error: ${response.statusCode}');
        throw Exception('Failed to load categories');
      }
    } catch (e) {
      print('Error fetching categories: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(size10),
            child: Column(
              children: [
                CommonCategoryAppbar(
                  leadingIcon: AssetImagePaths.arrow,
                  leadingOnTap: () {
                    Get.back();
                  },
                ),
                const SizedBox(height: size7),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: height8),
                  child: Stack(
                    children: [
                      Image.asset(
                        AssetImagePaths.catagoriesim,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                        bottom: height38,
                        right: size7,
                        child: Text(
                          StringConfig.october,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: bodaniModeItalic,
                            color: appColor,
                            fontWeight: FontWeight.w500,
                            fontSize: height44,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: height15,
                        right: height45,
                        child: Text(
                          StringConfig.collection,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: notoSerifTC,
                            color: appSubText,
                            fontWeight: FontWeight.w200,
                            fontSize: height16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: height14),
                  child: Text(
                    StringConfig.women,
                    style: TextStyle(
                      fontFamily: StringConfig.poppins,
                      color: titleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: height30,
                    ),
                  ),
                ),
                Image.asset(
                  AssetImagePaths.devider,
                  height: size10,
                ),
                // Iterate over the fetched categories and display them
                for (var category in categories)
                  TextCommon(
                    productName: category['name'],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextCommon extends StatelessWidget {
  final String productName;
  const TextCommon({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: height8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            productName,
            style: TextStyle(
              fontFamily: StringConfig.poppins,
              color: titleColor,
              fontWeight: FontWeight.w400,
              fontSize: height18,
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: height14),
        ],
      ),
    );
  }
}
