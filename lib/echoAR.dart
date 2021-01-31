import 'package:dotslash/learnWithAR.dart';
import 'package:flutter/material.dart';

class echoAR extends StatefulWidget {
  @override
  _echoARState createState() => _echoARState();
}

class _echoARState extends State<echoAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Learn with AR'),
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(8),
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Card(
              child: InkWell(
                  child: Column(
                    children: [
                      Image.network(
                        "https://www.teachpe.com/wp-content/uploads/2019/07/respiratory-system620.jpg",
                        height: 120,
                      ),
                      Text(
                        "Respiratory System",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      this.context,
                      // ignore: missing_return
                      MaterialPageRoute(
                        builder: (context) => LearnWithAR(),
                        settings:
                            RouteSettings(arguments: "Respiratory System"),
                      ),
                    );
                  }),
            ),
            Card(
              child: InkWell(
                  child: Column(
                    children: [
                      Image.network(
                        "https://www.teachpe.com/wp-content/uploads/2019/07/respiratory-system620.jpg",
                        height: 120,
                      ),
                      Text(
                        "Respiratory System",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      this.context,
                      // ignore: missing_return
                      MaterialPageRoute(
                        builder: (context) => LearnWithAR(),
                        settings:
                            RouteSettings(arguments: "Respiratory System"),
                      ),
                    );
                  }),
            ),
            Card(
              child: InkWell(
                  child: Column(
                    children: [
                      Image.network(
                        "https://www.teachpe.com/wp-content/uploads/2019/07/respiratory-system620.jpg",
                        height: 120,
                      ),
                      Text(
                        "Respiratory System",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      this.context,
                      // ignore: missing_return
                      MaterialPageRoute(
                        builder: (context) => LearnWithAR(),
                        settings:
                            RouteSettings(arguments: "Respiratory System"),
                      ),
                    );
                  }),
            ),
            Card(
              child: InkWell(
                  child: Column(
                    children: [
                      Image.network(
                        "https://www.teachpe.com/wp-content/uploads/2019/07/respiratory-system620.jpg",
                        height: 120,
                      ),
                      Text(
                        "Respiratory System",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      this.context,
                      // ignore: missing_return
                      MaterialPageRoute(
                        builder: (context) => LearnWithAR(),
                        settings:
                            RouteSettings(arguments: "Respiratory System"),
                      ),
                    );
                  }),
            ),
            Card(
              child: InkWell(
                  child: Column(
                    children: [
                      Image.network(
                        "https://www.teachpe.com/wp-content/uploads/2019/07/respiratory-system620.jpg",
                        height: 120,
                      ),
                      Text(
                        "Respiratory System",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      this.context,
                      // ignore: missing_return
                      MaterialPageRoute(
                        builder: (context) => LearnWithAR(),
                        settings:
                            RouteSettings(arguments: "Respiratory System"),
                      ),
                    );
                  }),
            ),
            Card(
              child: InkWell(
                  child: Column(
                    children: [
                      Image.network(
                        "https://www.teachpe.com/wp-content/uploads/2019/07/respiratory-system620.jpg",
                        height: 120,
                      ),
                      Text(
                        "Respiratory System",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      this.context,
                      // ignore: missing_return
                      MaterialPageRoute(
                        builder: (context) => LearnWithAR(),
                        settings:
                            RouteSettings(arguments: "Respiratory System"),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
