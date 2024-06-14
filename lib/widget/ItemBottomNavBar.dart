import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Expanded(
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: Text(
          //       "Baca",
          //       style: TextStyle(
          //         fontSize: 16,
          //         fontWeight: FontWeight.bold,
          //         color: Color(0xFF0E46A3),
          //       ),
          //     ),
          //     style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(
          //         Colors.white,
          //       ),
          //       fixedSize: MaterialStateProperty.all(Size(150,55)), // Lebar, Tinggi
          //     ),
          //   ),
          // ),
          Spacer(),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "pinjamPage");
              },
              child: Text(
                "Pinjam",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xFF62557D),
                ),
                fixedSize:
                    MaterialStateProperty.all(Size(150, 55)), // Lebar, Tinggi
              ),
            ),
          ),
        ],
      ),
    );
  }
}
