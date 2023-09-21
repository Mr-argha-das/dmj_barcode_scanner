import 'dart:convert';

import 'package:dmjstockmage/api/api.get.barcode.data.dart';
import 'package:flutter/material.dart';

import '../model/product.data.model.dart';

class ScannerResult extends StatefulWidget {
  final String res;
  const ScannerResult({super.key, required this.res});

  @override
  State<ScannerResult> createState() => _ScannerResultState();
}

class _ScannerResultState extends State<ScannerResult> with GetBarcodeData{
   late Future<ProductData> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = getBarcodeData(barcode: widget.res);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
      ),
     body: Center(
      child: Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
       child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FutureBuilder<ProductData>(
  future: futureAlbum,
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Text(snapshot.data!.data.name);
    } else if (snapshot.hasError) {
      return Text('${snapshot.error}');
    }

    // By default, show a loading spinner.
    return const Center(child: CircularProgressIndicator());
  },
)
              
            ],
          )
        ],
       ),
      )
     ),
    );
  }
}