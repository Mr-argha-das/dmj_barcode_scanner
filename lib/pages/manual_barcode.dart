import 'package:flutter/material.dart';

class ManualBarcode extends StatefulWidget {
  const ManualBarcode({super.key});

  @override
  State<ManualBarcode> createState() => _ManualBarcodeState();
}

class _ManualBarcodeState extends State<ManualBarcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                onChanged: (value) {
                },
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Search',
                  hintText: 'Search by barcode',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
          ),
        ],
      ),

    );
  }
}