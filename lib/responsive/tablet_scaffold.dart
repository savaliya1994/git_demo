import 'package:flutter/material.dart';
import 'package:responsive/constants/constant_var.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrcolor,
      appBar: appbar,
      drawer: drawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) => Card(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
              height: 80,
              color: Colors.green.shade200,
              margin: EdgeInsets.only(bottom: 15),
            ),
          ))
        ],
      ),
    );
  }
}
