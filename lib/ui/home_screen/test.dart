import 'package:flutter/material.dart';
import 'package:woocommerce_api/woocommerce_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'WooCommerce API Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
    url: "https://www.italiamachines.com",
    consumerKey: "ck_e97c1203e673f06215aae7f42c436148d182a4eb",
    consumerSecret: "cs_be09c2e27360d5b7eb635c82ee72f440289d7cda",
  );

  Future<List<dynamic>> _getCategories() async {
    int page = 1;
    List<dynamic> allCategories = [];

    while (true) {
      var categories = await wooCommerceAPI
          .getAsync("products/categories?per_page=100&page=$page");

      if (categories.isEmpty) {
        break;
      } else {
        allCategories.addAll(categories);
        page++;
      }
    }

    return allCategories;
  }

  Future<List<dynamic>> _getProducts() async {
    // Get data using the "products" endpoint
    var products = await wooCommerceAPI.getAsync("products");
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: _getProducts(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<dynamic>> snapshot) {
                if (snapshot.hasData) {
                  // Create a grid of products using GridView.builder
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          2, // Set the number of columns in the grid
                      crossAxisSpacing: 8, // Set spacing between columns
                      mainAxisSpacing: 8, // Set spacing between rows
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                snapshot.data![index]["images"][0]["src"],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    snapshot.data![index]["name"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Buy now for \$ " +
                                        snapshot.data![index]["price"],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }

                // Show a circular progress indicator while loading products
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
