import 'package:flutter/material.dart';

class MyTestPage extends StatefulWidget {
  const MyTestPage({super.key});

  @override
  State<MyTestPage> createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 00.0,
        ),
        body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.orange,
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
                    Text("Product Name", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18

                    ),),
                    Text("SKU ID", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17

                    ),),
                    Text("Category", style: TextStyle(
                      color: Colors.black,
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
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18

                    ),),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17

                    ),),
                    Text(":", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17

                    ),),
                  ],
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 2,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text("Product name", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18

                    ),),
                    Text("SKU ID", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17

                    ),),
                    Text("Category", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17

                    ),),
                  ],
                ))
                  ],
                ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Product Variants", style: TextStyle(color: Colors.black, fontSize: 18),),
      ),
      Expanded(child: 
       ListView.builder(
        itemCount: 4,
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
                     borderRadius: BorderRadius.circular(10)
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
                    Text("Product name", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18

                    ),),
                    Text("SKU ID", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17

                    ),),
                    Text("Category", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17

                    ),),
                    
                  ],
                )),
                Expanded(child: Column())
                  ],
                )
              )),
              
            ],
          ),
        ),
      );
       })
      )
      ],        ),
      ),
    );
  }
}