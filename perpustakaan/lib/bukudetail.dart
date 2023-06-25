import 'package:flutter/material.dart';
import 'package:perpustakaan/bukudata.dart';

class bukudetail extends StatelessWidget {
  final BukuData bukuData;

  const bukudetail({Key? key, required this.bukuData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(bukuData.name),
      ),
      body: Column(
        children: [Image.network(bukuData.ImageUrl), Text(bukuData.desc)],
      ),
    );
  }
}
