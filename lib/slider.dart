import 'dart:math';

import 'package:flutter/material.dart';
import 'package:slider_emi/list.dart';

void main(){
  runApp( const slider());
}
double pr = 50;
class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Product filter',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
          actions: [Icon(Icons.apps,color: Colors.white,size: height*0.05,)],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider(
                min: 0,max: 500,
                divisions: 10,
                thumbColor: Colors.blue,
                activeColor: Colors.blue,
                value: pr,
                onChanged: (value){
                  setState(() {
                    pr = value;
                  });
                }
              ),
              Text("All products << ${pr.toStringAsFixed(0)}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100,fontSize: 25)),
            ],
          ),
        ),
      ),
    );
    Container(height: height*0.65,
    child: ListView(
      children: [
        List.generate(product.length,(index) => (product[index]['price'])?(index: index,name: product[index]['name'],price: product[index]['price'],quantity: product [index]['quantity']):Container()),
         ],

        )
      );
  }
}
