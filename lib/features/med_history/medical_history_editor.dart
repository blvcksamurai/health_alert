// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health_alert/utils/constants.dart';
import 'package:intl/intl.dart';

class MedHistoryEditor extends StatefulWidget {
  const MedHistoryEditor({super.key});

  @override
  State<MedHistoryEditor> createState() => _MedHistoryEditorState();
}

class _MedHistoryEditorState extends State<MedHistoryEditor> {
  // String date = DateTime.now().toString();
  String date =
      DateFormat('EEEE, MMMM d, yyyy h:mm a').format(DateTime.now()).toString();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _mainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.editorBg,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Constants.lightGreen),
        backgroundColor: Constants.boxGreen,
        title: Text(
          'Add New',
          style: TextStyle(
            color: Color(0xFF36F5D3),
            fontSize: 28,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Medical History Title'),
              style: TextStyle(
                color: Constants.darkGreen,
                fontSize: 24,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              date,
              style: TextStyle(
                color: Constants.darkGreen,
                fontSize: 18,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _mainController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Medical history details...'),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.darkGreen,
        onPressed: () async {
          FirebaseFirestore.instance.collection('notes').add({
            'note_title': _titleController.text,
            'creation_date': date,
            'note_content': _mainController.text
          }).then((value) {
            print(value.id);
            Navigator.pop(context);
          }).catchError(
              (error) => print('Failed to add Medical History due to $error'));
        },
        child: Icon(
          Icons.save_as,
          color: Colors.white,
        ),
      ),
    );
  }
}
