import 'package:flutter/material.dart';

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

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;
//membuat constructor
  ItemProduk({ required this.kodeProduk,required  this.namaProduk,required  this.harga});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          child: ListTile(
            title: Text(namaProduk),
            subtitle: Text(harga.toString()), //parsing dari int ke string
          ),
        ),
        onTap: () {
// pindah ke halaman Produk Detail dan mengirim data
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => ProdukDetail(
                kodeProduk: kodeProduk,
                namaProduk: namaProduk,
                harga: harga,
              )));
        }
    );
  }
}