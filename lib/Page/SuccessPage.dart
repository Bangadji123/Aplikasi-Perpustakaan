import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 225),
            decoration: BoxDecoration(color: Color(0xFF0E46A3)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset(
                        "asset/Icon/success.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Pesanan Berhasil',
                        style: TextStyle(
                          color: Color(0xFF2AFF00),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "homePage");
                  },
                  child: Container(
                    width: 253,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Kembali ke Beranda',
                      style: TextStyle(
                        color: Color(0xFF0E46A3),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
