import 'package:aplikasi_perpustakaan/widget/PinjamAppBar.dart';
import 'package:aplikasi_perpustakaan/widget/PinjamBottomNavBar.dart';
import 'package:aplikasi_perpustakaan/widget/PinjamWidget.dart';
import 'package:flutter/material.dart';

class PinjamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PinjamAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xFFE1E1E1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                PinjamWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: PinjamBottomNavBar(),
    );
  }
}