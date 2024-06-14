// File: widget/TSelectionHeading.dart
import 'package:flutter/material.dart';

class TSelectionHeading extends StatelessWidget {
  final String title;
  final bool showActionButton;

  const TSelectionHeading({
    Key? key,
    required this.title,
    this.showActionButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (showActionButton)
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Action button callback
            },
          ),
      ],
    );
  }
}
