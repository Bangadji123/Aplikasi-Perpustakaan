import 'package:aplikasi_perpustakaan/Page/RecomemdedPage.dart';
import 'package:aplikasi_perpustakaan/Page/UlasanPage.dart';
import 'package:aplikasi_perpustakaan/widget/ItemAppBar.dart';
import 'package:aplikasi_perpustakaan/widget/ItemBottomNavBar.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1E1E1),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "asset/image/komik.jpg", // Perbaiki path asset gambar
              height: 300,
              width: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 45,
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Nama Produk",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0E46A3),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 30,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 30,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "Deskripsi Produk Deskripsi Produk Deskripsi Produk Deskripsi Produk Deskripsi Produk Deskripsi Produk ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF0E46A3),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "Stok: 10",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0E46A3),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "Ulasan",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0E46A3),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.end, // Align text to the right
                      children: [
                        Text(
                          "Lihat Semua",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0E46A3),
                          ),
                        ),
                      ],
                    ),
                    UlasanPage(),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Mungkin Anda Suka",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          RecomemdedPage(),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
