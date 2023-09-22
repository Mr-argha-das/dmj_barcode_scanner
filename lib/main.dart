import 'package:dmjstockmage/pages/homepage.dart';
import 'package:dmjstockmage/pages/products.dart';
import 'package:dmjstockmage/pages/scanner.dart';
import 'package:dmjstockmage/pages/scanner.result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(const MaterialApp(
    home: Login_page(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  String _scanBarcode = 'Unknown';
  Future<void> scanBarcodeNormal() async {
    String? barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      if (barcodeScanRes != null) {
        // ignore: use_build_context_synchronously

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ScannerResult(
                      res: barcodeScanRes!,
                    )));
      }
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("DMJ Stock Mangement")),
        // drawer:  const MyDrawer(),
        bottomNavigationBar: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 0,
                    blurRadius: 12,
                    offset: const Offset(0, -4))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ))),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: IconButton(
                    onPressed: () async {
                      await scanBarcodeNormal();
                    },
                    icon: const Icon(
                      Icons.qr_code_scanner_sharp,
                      color: Colors.black,
                    )),
              )),
              Expanded(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const ProductsList()));
                      },
                      icon: const Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
