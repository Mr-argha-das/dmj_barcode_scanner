
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/product.data.model.dart';
class GetBarcodeData{
  Future<ProductData> getBarcodeData({required String barcode}) async {
  final response = await http
      .get(Uri.parse('https://api.diwamjewels.com/DMJ/api/v1/products/barCode/$barcode'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ProductData.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
}