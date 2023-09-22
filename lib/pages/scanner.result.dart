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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
        title: const Text("Product Details", style: TextStyle(color: Colors.black),),
      ),
     body: FutureBuilder<ProductData>(
  future: futureAlbum,
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
     
      Expanded(
        child: Container(
         
          width: MediaQuery.of(context).size.width,
          decoration:  const BoxDecoration(
            color: Color.fromARGB(255, 183, 157, 51),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Bar Code", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
      
                      ),),
                      Text("Product Name", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
      
                      ),),
                      Text("SKU ID", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
      
                      ),),
                      Text("Description", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
      
                      ),),
                      
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text("|", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
      
                      ),),
                      Text("|", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
      
                      ),),
                      Text("|", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
      
                      ),),
                      Text("|", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
      
                      ),),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(snapshot.data!.data.barCodeNumber, style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18
      
                      ),),
                      Text(snapshot.data!.data.name, style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontSize: 18
      
                      ),),
                      Text(snapshot.data!.data.sku, style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17
      
                      ),),
                      Text(snapshot.data!.data.seoTitle, style: const TextStyle(
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 17
      
                      ),),
                    ],
                  ))
                    ],
                  ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Product Variants", style: TextStyle(color: Colors.black, fontSize: 18),),
      ),
      Expanded(
        flex: 4,
        child: 
       ListView.builder(
        itemCount: snapshot.data!.data.images.length,
        itemBuilder: (context,index){
        return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration:  BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
               
                  decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage("https://api.diwamjewels.com/DMJ/images/${snapshot.data!.data.images[index].thumbImage}"))
                  ),
                ),
              )),
              Expanded(
                flex: 2,
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text("Price", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text("Discount", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text("Weight or size", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text("Available stock ", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),

                    
                  ],
                )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const SizedBox(
                      height: 10,
                    ),
                    Text("₹ ${snapshot.data!.data.images[index].productVariantEntities[0].price.toString()}", style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text("${snapshot.data!.data.images[index].productVariantEntities[0].discount.toString()}%", style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text(snapshot.data!.data.images[index].productVariantEntities[0].size.toString(), style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    const Text("", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    Text(snapshot.data!.data.images[index].productVariantEntities[0].stock.toString(), style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15

                    ),),
                    
                  ],
                )),
                  ],
                )
              )),
              
            ],
          ),
        ),
      );
       })
      )
      ],        );
    } else if (snapshot.hasError) {
      return const Center(child: Text('Product no found \n rescan barcode', style: TextStyle(color: Colors.black, fontSize: 22),));
    }

    // By default, show a loading spinner.
    return const Center(child: CircularProgressIndicator());
  },
)
    );
  }
}