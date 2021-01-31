// import 'package:dotslash/viewIn3D.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class LearnWithAR extends StatefulWidget {
  LearnWithAR({Key key}) : super(key: key);

  @override
  _LearnWithARState createState() => _LearnWithARState();
}

class _LearnWithARState extends State<LearnWithAR> {
  var _results = {
    'Respiratory System':
        'Your respiratory system is the network of organs and tissues that help you breathe. This system helps your body absorb oxygen from the air so your organs can work. It also cleans waste gases, such as carbon dioxide, from your blood. Common problems include allergies, diseases or infections.\n\nWhat is the respiratory system?\n\nThe respiratory system is the network of organs and tissues that help you breathe. It includes your airways, lungs, and blood vessels. The muscles that power your lungs are also part of the respiratory system. These parts work together to move oxygen throughout the body and clean out waste gases like carbon dioxide.\nWhat does the respiratory system do?The respiratory system has many functions. Besides helping you inhale (breathe in) and exhale (breathe out), it:Allows you to talk and to smell.Brings air to body temperature and moisturizes it to the humidity level your body needs.Delivers oxygen to the cells in your body.Removes waste gases, including carbon dioxide, from the body when you exhale.Protects your airways from harmful substances and irritants',
    'Key_2': 'Value_2',
  };
  var imglink = {
    'Respiratory System':
        "https://www.teachpe.com/wp-content/uploads/2019/07/respiratory-system620.jpg",
    'Key_2': 'Value_2',
  };
  _launchURL(String url) async {
    const url =
        'https://console.echoar.xyz/webar?key=tight-art-6095&entry=8f0b9443-9433-448c-ad29-1ed76836d199';
    print(url);
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final _diseasesName = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_diseasesName),
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(imglink[_diseasesName]),
              Container(
                margin: EdgeInsets.all(25),
                child: FlatButton(
                  color: Colors.green,
                  child: Text(
                    'Try with EchoAR',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    var _url = "www.google.com";
                    _launchURL(_url);
                  },
                ),
              ),
              Text(_results[_diseasesName], style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
