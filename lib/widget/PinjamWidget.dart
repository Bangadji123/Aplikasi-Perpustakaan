import 'package:flutter/material.dart';

class PinjamWidget extends StatefulWidget {
  @override
  _PinjamWidgetState createState() => _PinjamWidgetState();
}

class _PinjamWidgetState extends State<PinjamWidget> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectedDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Kode Perpus",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0E46A3),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 55,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Kode Perpus",
              ),
              cursorColor: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Email/No Telepon",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0E46A3),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 55,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email, No Telepon",
              ),
              cursorColor: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Tanggal Pengembalian",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0E46A3),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 55,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: TextFormField(
              controller: _dateController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "YY/MM/DD",
              ),
              readOnly: true,
              onTap: () {
                _selectedDate();
              },
            ),
          ),
        ),
      ],
    );
  }
}
