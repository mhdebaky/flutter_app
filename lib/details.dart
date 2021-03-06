import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data/locations.dart';

class Details extends StatelessWidget {
  static LocationsAll x = new LocationsAll();
  List listobj = x.stu();
  int value;
  Details({this.value});
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Details',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.yellow,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.map,
              color: Colors.black,
            ),
            onPressed: () {
              launch(listobj[value - 1].locationUrl);
            },
            backgroundColor: Colors.green),
        backgroundColor: Colors.grey,
        body: ListView(
          children: [
            Card(
                shadowColor: Colors.black,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      listobj[value - 1].name,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(image: NetworkImage(listobj[value - 1].imageUrl)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      listobj[value - 1].description,
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ))
          ],
        ));
  }
}
