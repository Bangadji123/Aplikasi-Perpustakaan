import 'package:flutter/material.dart';

class PinjamBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Spacer(),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "successPage");
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
                  Color(0xFF0E46A3),
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