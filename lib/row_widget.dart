import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Row'),
      ),
      body: Row(
        children: [
          Text('Baris 1'),
          Text('Baris 2'),
          Text('Baris 3'),
          Text('Baris 4'),
        ],
      ),
    );
  }
}