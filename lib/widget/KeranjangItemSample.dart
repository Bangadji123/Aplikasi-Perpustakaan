import 'package:flutter/material.dart';

class KeranjangItemSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "belumdiambilPage");
          },
          child: Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "asset/Icon/box1.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum Diambil",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0E46A3),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // SizedBox(height: 10),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "belumdikembalikanPage");
          },
          child: Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "asset/Icon/box time.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum Dikembalikan",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0E46A3),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // SizedBox(height: 10),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "sudahdikembalikanPage");
          },
          child: Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "asset/Icon/box verif.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah Dikembalikan",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0E46A3),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
