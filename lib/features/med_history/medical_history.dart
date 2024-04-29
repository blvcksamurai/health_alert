// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_alert/features/med_history/medical_history_editor.dart';
import 'package:health_alert/features/med_history/medical_history_reader.dart';
import 'package:health_alert/widgets/DashBoardMenu.dart';
import 'package:health_alert/widgets/MedHistoryCard.dart';

import '../../utils/constants.dart';

class MedicalHistory extends StatefulWidget {
  // Function()? theme;
  const MedicalHistory({super.key});

  @override
  State<MedicalHistory> createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Constants.lightGreen,
            )),
        backgroundColor: Colors.black,
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
      backgroundColor: Constants.bgDark,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 20),
            DashboardMenu(
              route: () {},
              title: 'Medical History',
              img: 'assets/images/png/med.png',
            ),
            SizedBox(height: 20),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("notes").snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  //checking connection status
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Constants.lightGreen,
                      ),
                    );
                  }
                  if (snapshot.hasData) {
                    // return Container(
                    //   height: 150,
                    //   width: 150,
                    //   color: Colors.red,
                    // );
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      children: snapshot.data!.docs
                          .map((note) => MedHistoryCard(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MedHistoryReader(
                                              doc: note,
                                            )));
                              }, note))
                          .toList(),
                    );
                  }
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/png/empty_state.png'))),
                    child: Text(
                      "No data Found",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(eccentricity: 1.0),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MedHistoryEditor()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
