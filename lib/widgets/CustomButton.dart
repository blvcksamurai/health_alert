// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  CustomButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {},
    );
  }
}
