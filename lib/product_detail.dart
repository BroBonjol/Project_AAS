import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer' as developer;


class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
  }) : super(key: key);

  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;

  // final List<dynamic> dataProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Data Product'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                thumbnail,
                height: 300,
                fit: BoxFit.cover,
              ),
              Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Title
                          Text(title,
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.w600)),
                          Icon(
                            Icons.favorite,
                            color: Colors.pink,
                            size: 20.0,
                          ),
                        ],
                      ),

                      // Description
                      Text(description,
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w300)),
                      SizedBox(height: 20),

                      Text('Detail Info',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Divider(color: Colors.grey),

                      // Harga
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('Harga',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Text(
                            ': Rp ' + price.toString(),
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey),

                      // Diskon
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('Diskon',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Text(
                            ': ' +
                                discountPercentage
                                    .toStringAsFixed(0)
                                    .toString() +
                                '%',
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey),

                      // Rating
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('Rating',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Text(
                            ': ' + rating.toString(),
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey),

                      // Stock
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('Stok',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Text(
                            ': ' + stock.toString(),
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey),

                      // Brand
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('Brand',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Text(
                            ': ' + brand.toString(),
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.grey),

                      // Kategori
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: Text('Kategori',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Text(
                            ': ' + category.toString(),
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  )),
              
            ],
          ),
        ));
  }
}
