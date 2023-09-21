


import 'package:dmjstockmage/pages/scanner.result.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(),
       body: SimpleBarcodeScannerPage(onChnage: (res){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ScannerResult(res: res,)));
                      },
      ),
      ),
    );
  }
}