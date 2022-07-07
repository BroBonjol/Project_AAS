import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:slicing/product_detail.dart';


void main() {
  runApp(MaterialApp(
    home: Product(),
  ));
}

class Product extends StatelessWidget {
  var apiUrl = Uri.parse('https://dummyjson.com/products');

  Future<List<dynamic>> _fecthDataProducts() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['products'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Product'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataProducts(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                title: snapshot.data[index]['title'].toString(),
                                description: snapshot.data[index]['description'].toString(),
                                price: int.parse(snapshot.data[index]['price'].toString()),
                                discountPercentage: double.parse(snapshot.data[index]['discountPercentage'].toString()),
                                rating: double.parse(snapshot.data[index]['rating'].toString()),
                                stock: int.parse(snapshot.data[index]['stock'].toString()),
                                brand: snapshot.data[index]['brand'].toString(),
                                category: snapshot.data[index]['category'].toString(),
                                thumbnail: snapshot.data[index]['thumbnail'].toString(),
                              ),
                          )
                        );
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        child: Image.network(
                          snapshot.data[index]['thumbnail'],
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(snapshot.data[index]['title']),
                      subtitle: Text(snapshot.data[index]['description']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
