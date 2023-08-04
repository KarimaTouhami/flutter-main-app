import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
// import 'package:ecommerce_ui_kit/ui/home_screen/widget_home/brand_detail_widget.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:ecommerce_ui_kit/ui/home_screen/widget_home/image_circal.dart';
import 'package:ecommerce_ui_kit/util/font_family.dart';
import 'package:flutter/material.dart';
import 'package:woocommerce_api/woocommerce_api.dart';
import 'package:get/get.dart';
import '../../controller/homecontroller.dart';
// import '../../config/routes/app_routes.dart';
// import '../../model/product_model.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/drawer.dart';
import '../categories_screen/widget/appbar_common.dart';
import '../ui/categories_screen/widget/appbar_common.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  final homeController = Get.put(HomeController());

  Future<List<dynamic>>? _productsFuture;
  List<dynamic>? _productsData;

  int currentSelectedIndex = -1;

  WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
    url: "https://www.italiamachines.com",
    consumerKey: "ck_e97c1203e673f06215aae7f42c436148d182a4eb",
    consumerSecret: "cs_be09c2e27360d5b7eb635c82ee72f440289d7cda",
  );

  Future<List<dynamic>> _getProducts() async {
    // Get data using the "products" endpoint
    var products = await wooCommerceAPI.getAsync("products");
    return products;
  }

  // the widget start here:
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _globalKey,
      drawer: MyHeaderDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(height15),
              child: CommonCategoryAppbar(
                leadingIcon: AssetImagePaths.menuic,
                leadingOnTap: () {
                  _globalKey.currentState!.openDrawer();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: height15),
              child: Stack(children: [
                Image.asset(
                  AssetImagePaths.homeinage,
                ),
                Column(
                  children: [
                    SizedBox(height: Get.height / 10),
                    const Center(
                      child: Text(StringConfig.disISCOVERTOURNEXT,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: notoSerifTC,
                            color: wightColor,
                            height: 1.6,
                            fontWeight: FontWeight.w900,
                            fontSize: height27,
                          )),
                    ),
                    const Text(StringConfig.nEWCOLLECTION,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: StringConfig.poppins,
                          color: wightColor,
                          fontWeight: FontWeight.w500,
                          fontSize: height15,
                        )),
                    SizedBox(height: Get.height / 30),
                    Container(
                        height: height30,
                        width: height90,
                        decoration: BoxDecoration(
                            color: wightColor,
                            borderRadius: BorderRadius.circular(size4)),
                        child: const Center(
                          child: Text(StringConfig.string_10OFF,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: appColor,
                                fontWeight: FontWeight.w500,
                                fontSize: height15,
                              )),
                        ))
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: height15,
            ),
            // __________This the catefory list that should be changed____________
            Container(
              height: height86,
              decoration: const BoxDecoration(color: rowColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    4,
                    (index) => Obx(
                          () => ImageCircle(
                            image: homeController.categoryList[index]["Image"],
                            text: homeController.categoryList[index]["Title"],
                          ),
                        )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: height14),
              child: Text(
                "Products List",
                style: TextStyle(
                  fontFamily: StringConfig.poppins,
                  color: titleColor,
                  fontWeight: FontWeight.w400,
                  fontSize: height20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: size5),
              child: Center(
                  child: Image.asset(
                AssetImagePaths.devider,
                height: size10,
              )),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: FutureBuilder(
                  future: _getProducts(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<dynamic>> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.separated(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Image.network(
                                snapshot.data![index]["images"][0]["src"],
                              ),
                            ),
                            title: Text(snapshot.data![index]["name"]),
                            subtitle: Text("Buy now for \$ " +
                                snapshot.data![index]["price"]),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(height: 1),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(color: Colors.black),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}