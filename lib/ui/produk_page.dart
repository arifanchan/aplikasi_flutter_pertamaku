import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertamaku/ui/produk_form.dart';
import 'package:aplikasi_flutter_pertamaku/ui/produk_detail.dart';

class ProdukPage extends StatefulWidget {
  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Produk Arifa Chan Store"),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () async {
              Navigator.push(context,new MaterialPageRoute(builder: (context) => ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
        //list 1
        ItemProduk(
        kodeProduk: "A001",
        namaProduk: "Kulkas",
        harga: 2500000,
      ),

      //list 2
      ItemProduk(
        kodeProduk: "A002",
        namaProduk: "LED 32 inch",
        harga: 2200000,
      ),

      //list 3
      ItemProduk(
        kodeProduk: "A003",
        namaProduk: "Mesin Cuci",
        harga: 1800000,
      ),

      //list 4
      ItemProduk(
        kodeProduk: "A004",
        namaProduk: "AC Split",
        harga: 4800000,
      ),
        ],
      ),
    );
  }
}

