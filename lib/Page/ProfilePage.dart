import 'package:aplikasi_perpustakaan/widget/ProfileWidget.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_perpustakaan/widget/ProfileAppBar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ProfileAppBar(),
          Container(
            padding: const EdgeInsets.all(16),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      "asset/image/palestina 2.png",
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF0E46A3).withOpacity(.5),
                      width: 5.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Free Palestine",
                    style: TextStyle(
                      color: Color(0xFF0E46A3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Kode Perpus: 21298",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF0E46A3),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * 0.6,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "editprofilePage");
                        },
                        child:
                            ProfileWidget(icon: Icons.person, title: "Profil"),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {},
                        child: ProfileWidget(
                            icon: Icons.settings, title: "Pengaturan"),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {},
                        child: ProfileWidget(
                            icon: Icons.notifications, title: "Notifikasi"),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {},
                        child: ProfileWidget(
                            icon: Icons.chat, title: "Pusat Bantuan"),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {},
                        child:
                            ProfileWidget(icon: Icons.logout, title: "Log Out"),
                      ),
                    ],
                  ),
                ),
                // Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
