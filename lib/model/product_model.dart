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
      body: FutureBuilder(
        future: _getProducts(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            // Create a list of products
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
                  subtitle: Text("Buy now for \$ " + snapshot.data![index]["price"]),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(height: 1),
            );
          }

          // Show a circular progress indicator while loading products
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
