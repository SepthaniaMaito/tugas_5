import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'product layout demo home page',),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing"),),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(name:"Iphone", description: "iphone is the stylist phone ever",
              price: 1000, image:"iphone.jpg"),
          ProductBox(name:"Pixel", description: "Pixel is the most  featureful phone ever",
              price: 800, image:"pixel.jpg"),
          ProductBox(name:"Laptop", description: "Laptop is most  productive development tool",
              price: 2000, image:"laptop.jpg"),
          ProductBox(name:"Tablet", description: "Tablet is the most usefuk device ever for meeting",
              price: 1500, image:"tablet.jpg"),
          ProductBox(name:"Pendrive", description: "Pendrive is useful storage medium",
              price: 100, image:"pendrive.jpg"),
          ProductBox(name:"Floopy Drive", description: "Floopy drive  is useful rescue storage medium", price: 20, image:"floopydisk.jpg"),
        ],),);
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({
    Key? key, required this.name, required this.description, required this.price, required this.image,}) : super(key: key);

  final String name;final String description;final int price;final String image;

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(2), height: 140, child: Card(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[Image.asset("images/" + image),
        Expanded(child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                this.name, style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(this.description),
              Text("Price: " + this.price.toString()),
            ],),),),],),),
    );
  }
}