import 'dart:convert';

import 'package:demoapi/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LastExample extends StatefulWidget {
  const LastExample({super.key});

  @override
  State<LastExample> createState() => _LastExampleState();
}

class _LastExampleState extends State<LastExample> {
  Future<ProductsModel> getProductApi() async {
    final response = await http.get(
        Uri.parse("https://webhook.site/d24f9761-dfba-4759-bcda-f42f3dd539b7"));

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Api "),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder<ProductsModel>(
                  future: getProductApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: snapshot
                                          .data!.data![index].images!.length,
                                      itemBuilder: (context, position) {
                                        return Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .25,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .5,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(snapshot
                                                      .data!
                                                      .data![index]
                                                      .images![position]
                                                      .url
                                                      .toString()))),
                                        );
                                      })
                                ],
                              ),
                            );
                          });
                    } else {
                      return const Text("Loading ");
                    }
                  }))
        ],
      ),
    );
  }
}
