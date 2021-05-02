import 'package:flutter/material.dart';
import 'main.dart';
import 'data/locations.dart';
import 'models/Location.dart';

class Formxc extends StatefulWidget {
  State<StatefulWidget> createState() {
    return FormxcState();
  }
}

class FormxcState extends State<Formxc> {
  static LocationsAll x = new LocationsAll();
  List listobj = x.stu();
  Location y;
  final controller1 = new TextEditingController();
  void dispose1() {
    controller1.dispose();
    super.dispose();
  }

  final controller2 = new TextEditingController();
  void dispose2() {
    controller2.dispose();
    super.dispose();
  }

  final controller3 = new TextEditingController();
  void dispose3() {
    controller3.dispose();
    super.dispose();
  }

  final controller4 = new TextEditingController();
  void dispose4() {
    controller4.dispose();
    super.dispose();
  }

  final controller5 = new TextEditingController();
  void dispose5() {
    controller5.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Form',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                        hintText: "Location name",
                      ),
                    ),
                    TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                        hintText: "Theme",
                      ),
                    ),
                    TextField(
                      controller: controller3,
                      decoration: InputDecoration(
                        hintText: "Full Description",
                      ),
                    ),
                    TextField(
                      controller: controller4,
                      decoration: InputDecoration(
                        hintText: "Image url",
                      ),
                    ),
                    TextField(
                      controller: controller5,
                      decoration: InputDecoration(
                        hintText: "Location url",
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.yellow),
                      child: Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        y.id = listobj.length + 1;
                        y.name = controller1.text;
                        y.description = controller3.text;
                        y.theme = controller2.text;
                        y.imageUrl = controller4.text;
                        y.locationUrl = controller5.text;
                        listobj.add(y);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                    ),
                  ],
                ))));
  }
}
