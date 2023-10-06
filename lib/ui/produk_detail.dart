import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertamaku/ui/produk_form.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  ProdukDetail({required this.kodeProduk,required  this.namaProduk, required this.harga});

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk Arifa Chan Store"),
        // actions: [
        //   GestureDetector(
        //     child: Icon(Icons.add),
        //     onTap: () async {
        //       Navigator.push(context,new MaterialPageRoute(builder: (context) => ProdukForm()));
        //     },
        //   )
        // ],

      ),
      body: Column(
        children: [
          Text("Kode Produk : " + widget.kodeProduk),
          Text("Nama Produk : ${widget.namaProduk}"), // jika didalam String
          Text("Harga : ${widget.harga.toString()}"), // jika didalam String
        ],
      ),
    );
  }
}