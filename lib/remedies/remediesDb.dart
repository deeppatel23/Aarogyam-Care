import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class remedies extends StatefulWidget {
  @override
  _BestFoodWidgetState createState() => _BestFoodWidgetState();
}

TextEditingController remediesTitle = TextEditingController();
TextEditingController remediesDescription = TextEditingController();
TextEditingController remediesIngredients = TextEditingController();

final FirebaseAuth _auth = FirebaseAuth.instance;
User user;
String accountEmail = "${user?.email}";

class _BestFoodWidgetState extends State<remedies> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'remedies Form',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            'remedies',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextFormField(
                    maxLines: null,
                    controller: remediesTitle,
                    decoration: new InputDecoration(
                      hintText: 'remedies',
                      border: InputBorder.none,
                      fillColor: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: new Border.all(
                      color: Colors.pink,
                      width: 1.0,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextFormField(
                    maxLines: null,
                    controller: remediesIngredients,
                    decoration: new InputDecoration(
                      hintText: 'Ingredients',
                      border: InputBorder.none,
                      fillColor: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: new Border.all(
                      color: Colors.pink,
                      width: 1.0,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextFormField(
                    maxLines: null,
                    controller: remediesDescription,
                    decoration: new InputDecoration(
                      hintText: 'remedies D',
                      border: InputBorder.none,
                      fillColor: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: new Border.all(
                      color: Colors.pink,
                      width: 1.0,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SignInButtonWidget2(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInButtonWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xFFfbab66),
          ),
          BoxShadow(
            color: Color(0xFFf7418c),
          ),
        ],
        gradient: new LinearGradient(
            colors: [Color(0xFFf7418c), Color(0xFFfbab66)],
            begin: const FractionalOffset(0.2, 0.2),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: MaterialButton(
          highlightColor: Colors.transparent,
          splashColor: Color(0xFFf7418c),
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
            child: Text(
              "SUBMIT",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: "WorkSansBold"),
            ),
          ),
// /<<<<<<< ui
          onPressed: () => {
                submitremedies(),
              }),
// =======
      // onPressed: () => {createRecord()}),
// />>>>>>> main
    );
  }
}

submitremedies() {
  print(remediesTitle);
  FirebaseFirestore.instance
      .collection('remedies')
      .add({
        "title": remediesTitle.text,
        "name": accountEmail,
        "description": remediesDescription.text,
        "ingredients": remediesIngredients.text,
      })
      .then((result) => {})
      .catchError((err) => Dialog(child: Text("error")));
  remediesTitle.clear();
  remediesDescription.clear();
  remediesIngredients.clear();
}
