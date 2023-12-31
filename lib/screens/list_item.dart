import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:inventory_flutter/models/item.dart';
import 'package:inventory_flutter/widgets/left_drawer.dart';
import 'package:inventory_flutter/screens/one_item.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Item>> fetchProduct(CookieRequest request) async {
  final response = await request.postJson(
                              "https://aaron-kwek-tugas.pbp.cs.ui.ac.id/get-product/",
                              jsonEncode(<String, String>{
                                  'name':'dsa',
                              }));

    // melakukan konversi data json menjadi object Product
    List<Item> list_product = [];
    for (var d in response) {
        if (d != null) {
            list_product.add(Item.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
  final request = context.watch<CookieRequest>();
    return Scaffold(
        appBar: AppBar(
        title: const Text('Item'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(request),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data item.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                    "${snapshot.data![index].fields.name}",
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("${snapshot.data![index].fields.amount}"),
                                    const SizedBox(height: 10),
                                    Text("${snapshot.data![index].fields.description}"),
                                    ElevatedButton(onPressed: (){
                                      Navigator.push(
                                        context, 
                                        MaterialPageRoute(
                                          builder: (context) => DetailsPage(item: snapshot.data![index],),
                                        ));
                                    }, 
                                    child: Text("See Details"))
                                ],
                                ),
                            ));
                    }
                }
            }));
    }
}
