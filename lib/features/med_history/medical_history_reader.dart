// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:health_alert/utils/constants.dart';

class MedHistoryReader extends StatefulWidget {
  QueryDocumentSnapshot? doc;

  MedHistoryReader({this.doc, super.key});

  @override
  State<MedHistoryReader> createState() => _MedHistoryReaderState();
}

class _MedHistoryReaderState extends State<MedHistoryReader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.boxGreen,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Constants.lightGreen),
        backgroundColor: Constants.bgDark,
        title: Text(
          'Medical History',
          style: TextStyle(
            color: Color(0xFF36F5D3),
            fontSize: 24,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
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
            SizedBox(
              width: double.infinity,
              child: Text(
                widget.doc?["note_title"],
                style: TextStyle(
                  color: Color(0xFF36F5D3),
                  fontSize: 30,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              child: Text(
                widget.doc?['note_content'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
