import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:health_alert/utils/constants.dart';

Widget MedHistoryCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Constants.boxGreen,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //   SizedBox(
            //   width: double.infinity,
            //   child: Text(
            //     doc["note_title"],
            //     style: TextStyle(
            //       color: Color(0xFF36F5D3),
            //       fontSize: 16,
            //       fontFamily: 'Raleway',
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
            Text(
              doc['creation_date'],
              style: TextStyle(
                color: Color(0xFF859E9B),
                fontSize: 13,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: Text(
                doc["note_title"],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF36F5D3),
                  fontSize: 18,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 134,
              child: Text(
                doc["note_content"],
                style: TextStyle(
                  color: Color(0xFF859E9B),
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ));
}
