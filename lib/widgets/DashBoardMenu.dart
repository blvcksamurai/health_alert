import 'package:flutter/material.dart';

class DashboardMenu extends StatelessWidget {
  String title;
  String img;
  Function() route;
  DashboardMenu({
    required this.title,
    required this.img,
    required this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: route,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        width: double.infinity,
        height: 116,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: ShapeDecoration(
          color: Color(0xFF3A4947),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF36F5D3),
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
                width: 144,
                height: 108,
                child: Image(
                  image: AssetImage(img),
                )),
          ],
        ),
      ),
    );
  }
}
