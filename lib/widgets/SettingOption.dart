import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SettingOption extends StatelessWidget {
  String title;
  String prefixIcon;
  SettingOption({
    required this.prefixIcon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(prefixIcon))),
          ),
          Expanded(
            child: SizedBox(
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xFF36F5D3),
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            height: 24,
            width: 24,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Constants.subGreen,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
