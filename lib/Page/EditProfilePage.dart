import 'package:aplikasi_perpustakaan/TSelectionHeading.dart';
import 'package:aplikasi_perpustakaan/widget/EditProfileAppBar.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          EditProfileAppBar(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                // Profile Picture
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        "asset/image/palestina 2.png",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change Profile Picture',
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                TSelectionHeading(
                  title: 'Informasi Profil',
                  showActionButton: false,
                ),
                SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFA0A0A0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Free Palestine',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Expanded(
                        child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFA0A0A0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'f**********5@gmail.com',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Expanded(
                        child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFA0A0A0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        '************',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Expanded(
                        child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )),
                  ],
                ),
                SizedBox(height: 15),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
