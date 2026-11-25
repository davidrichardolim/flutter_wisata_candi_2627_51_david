import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_2627_51/data/candi_data.dart';
import 'package:flutter_wisata_candi_2627_51/models/candi.dart';
import 'package:flutter_wisata_candi_2627_51/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todo1 buat appbar dengan judul wisata candi
      appBar: AppBar(title: Text('wisata candi'),),
      //todo2 buat body dengan gridview builder
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(8),
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          Candi candi = candiList[index];
          return itemCard(candi: candi);
        },
        ),
      //todo3 buat itemcard sebagai return value dari gridview builder
    );
  }
}