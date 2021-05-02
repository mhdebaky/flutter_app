import 'package:flutter/material.dart';
import 'package:flutter_dev/data/locations.dart';
import 'package:flutter_dev/details.dart';
import './form.dart';
import 'data/locations.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static LocationsAll x = new LocationsAll();
  List listobj = x.stu();
  int value;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text(
                'FavLocations',
                style: TextStyle(color: Colors.black),
              )),
              backgroundColor: Colors.yellow,
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Formxc()),
                  );
                },
                backgroundColor: Colors.green),
            backgroundColor: Colors.grey,
            body: ListView.builder(
              itemCount: listobj.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Card(
                      shadowColor: Colors.black,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Image(image: NetworkImage(listobj[index].imageUrl)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            listobj[index].name,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            listobj[index].theme,
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      )),
                  onTap: () {
                    value = listobj[index].id;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Details(value: value)));
                  },
                );
              },
            )));
  }
}
