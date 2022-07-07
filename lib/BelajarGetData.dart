import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main(){
  runApp(MaterialApp(
    home: BelajarGetData()
  ));
}

class BelajarGetData extends StatelessWidget {
  var apiUrl = Uri.parse('https://dummyjson.com/products');
  Future<List<dynamic>> _fetchDataProducts() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['products'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Get HTTP Request'),
      ),

      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fetchDataProducts(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(snapshot.data[index]['thumbnail']),
                    ),
                    title: Text(snapshot.data[index]['title'] ),
                    subtitle: Text(snapshot.data[index]['description']),
                  );
                }
              );
            }else {
              return Center(child: CircularProgressIndicator());
            }
          }
        ),
      ),
    );
  }
}
