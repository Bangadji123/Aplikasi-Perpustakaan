import 'package:aplikasi_perpustakaan/widget/BelumdiambilAppBar.dart';
import 'package:aplikasi_perpustakaan/widget/Belumdiambilitem.dart';
import 'package:flutter/material.dart';

class BelumdiambilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BelumdiambilAppBar(),
          Container(
            height: 800,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFE1E1E1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Belumdiambilitem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
