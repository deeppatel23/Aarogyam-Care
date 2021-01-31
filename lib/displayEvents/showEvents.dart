import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ShowEvents extends StatefulWidget {
  ShowEvents();
  @override
  VideoScreenState createState() => VideoScreenState();
}

// ignore: unused_element
int _defaultValue = 1;
TextEditingController val = new TextEditingController(text: "1");

class VideoScreenState extends State<ShowEvents> {
  VideoScreenState();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      color: Colors.white,
      child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('events&schemes')
              .orderBy('date', descending: true)
              .snapshots(),
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
                  padding: EdgeInsets.all(8),
                  color: Colors.white54,
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(8),
                          // padding: EdgeInsets.only(
                          //     left: 10, right: 5, top: 5, bottom: 5),
                          // decoration: BoxDecoration(boxShadow: []),
                          child: Card(
                            color: Color.fromRGBO(152, 251, 152, 0.5),

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
                                    "Name: " + document['name'].toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Center(
                                        child: Image.network(
                                      document['image'].toString(),
                                      //'assets/images/popular_foods/ic_popular_food_1' +
                                      // ".png",
                                      //width: 130,
                                      //height: 100,
                                    )),
                                  ),
                                  Text(
                                    "Description: " +
                                        document['description'].toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "Timing: " +
                                        DateTime.parse(document['date']
                                                .toDate()
                                                .toString())
                                            .toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "Place: " + document['place'].toString(),
                                    style: TextStyle(fontSize: 20),
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
