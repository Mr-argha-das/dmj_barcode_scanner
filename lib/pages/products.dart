import 'package:flutter/material.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.orange,
       ),
       body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade200,
        child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index){
          return const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 25),
            child: ProductCard(),
          );
        }),
       ),
    );
  }
}
class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             
              decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQe4z5PzcyWs2hmilS4Ccn8Oys4TNGQj1lPlL5c-UE-Irbl5jIbPe7uxcplCNqRw2CITbZ2Vd9mK-wWp7m0EqpO3bXB_TtEyxvelPYn82zYVKyxDBuNNvgk8Q"))
              ),
            ),
          )),
          Expanded(
            flex: 2,
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                         Text("Product Name", style: TextStyle(
                          color: Colors.black,
                          fontSize: 22
                        ),),
                        

                      ],
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("Price: 1432", style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                        ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, 
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("Stock count: 1432", style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                        ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("Category: Art & Craft . ", style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                        ),),
                      ],
                    )
                  ],
                ),
              ),
            ))
        ],
      ),
    );
  }
}