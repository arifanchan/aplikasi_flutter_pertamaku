import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertamaku/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Produk"),
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
          Card(
            child: ListTile(
              title: Text("Kulkas"),
              subtitle: Text("2500000"),
            ),
          ),
          //list 2
          Card(
            child: ListTile(
              title: Text("TV"),
              subtitle: Text("5000000"),
            ),
          ),
          //list 3
          Card(
            child: ListTile(
              title: Text("Mesin Cuci"),
              subtitle: Text("1500000"),
            ),
          ),
        ],
      ),
    );
  }
}