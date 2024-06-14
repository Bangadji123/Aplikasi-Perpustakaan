import 'package:aplikasi_perpustakaan/LoginScreen/Login_Screen.dart';
import 'package:aplikasi_perpustakaan/Page/BelumdiambilPage.dart';
import 'package:aplikasi_perpustakaan/Page/BelumdikembalikanPage.dart';
import 'package:aplikasi_perpustakaan/Page/EditProfilePage.dart';
import 'package:aplikasi_perpustakaan/Page/FavoritePage.dart';
import 'package:aplikasi_perpustakaan/Page/HomePage.dart';
import 'package:aplikasi_perpustakaan/Page/ItemPage.dart';
import 'package:aplikasi_perpustakaan/Page/PinjamPage.dart';
import 'package:aplikasi_perpustakaan/Page/SuccessPage.dart';
import 'package:aplikasi_perpustakaan/Page/SudahdikembalikanPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
                 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(), // Rute untuk LoginScreen
        'homePage': (context) => Homepage(), // Rute untuk Homepage
        'loginScreen': (context) => LoginScreen(), // Rute untuk Homepage
        'favoritePage': (context) => FavoritePage(), // Rute untuk FavoritPage
        'itemPage': (context) => ItemPage(), // Rute untuk CartPage
        'editprofilePage': (context) => EditProfilePage(), // Rute untuk EditProfilePage
        'pinjamPage': (context) => PinjamPage(), 
        'successPage': (context) => SuccessPage(), // Rute untuk SuccessPage// Rute untuk PinjamPage
        'belumdiambilPage': (context) => BelumdiambilPage(), // Rute untuk BelumdiambilPage
        'belumdikembalikanPage': (context) => BelumdikembalikanPage(), // Rute untuk BelumdiambilPage
        'sudahdikembalikanPage': (context) => SudahdikembalikanPage(), // Rute untuk SudahdiambilPage
      },
      theme: ThemeData(
        backgroundColor: Colors.white, // Background color putih (white)
      ),
      // home: Scaffold(
      //   body: Center(
      //     child: Builder(
      //       builder: (context) {
      //         var screenSize = MediaQuery.of(context).size;
      //         return Container(
      //           width: screenSize.width * 0.5,
      //           height: screenSize.height * 0.8,
      //         );
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}
