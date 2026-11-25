import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_2627_51/models/candi.dart';

class itemCard extends StatelessWidget {
  //todo1 deklarasikan variabel yang dibutuhkan 
  final Candi candi;

  const itemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      //todo 2 tetapkan parameter
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //todo 3 buat image sebagai anak dari column
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: Image.asset(
                candi.imageAsset, 
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ), 
          //todo 4 buat text sebagai anak dari column
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              candi.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          //todo 5 buat text sebagai anak dari column
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              candi.type,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}