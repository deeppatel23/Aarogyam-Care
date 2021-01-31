import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ShowRemedies extends StatefulWidget {
  ShowRemedies();
  @override
  VideoScreenState createState() => VideoScreenState();
}

// ignore: unused_element
int _defaultValue = 1;
TextEditingController val = new TextEditingController(text: "1");

class VideoScreenState extends State<ShowRemedies> {
  VideoScreenState();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      color: Colors.white,
      child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('remedies').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView(
              scrollDirection: Axis.vertical,
              children: snapshot.data.docs.map((document) {
                return Container(
                  // padding: EdgeInsets.all(8),
                  color: Colors.white54,
                  child: Column(
                    children: <Widget>[
                      Container(
                          // padding: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width - 20,
                          child: Card(
                            color: Colors.deepOrange[100],

                            //   elevation: 0,
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: const BorderRadius.all(
                            //       Radius.circular(5.0),
                            //     ),
                            //   ),
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Name: " + document['title'].toString(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Plant: " +
                                        document['ingredients'].toString(),
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Description: " +
                                          document['description'].toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                );
              }).toList(),
            );
          }),
    );
  }
}
