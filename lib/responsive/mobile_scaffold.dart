import 'package:flutter/material.dart';
import 'package:responsive/constants/constant_var.dart';
import 'package:responsive/percentage_indicator.dart';

class MobileAcaffold extends StatefulWidget {
  const MobileAcaffold({Key? key}) : super(key: key);

  @override
  State<MobileAcaffold> createState() => _MobileAcaffoldState();
}

class _MobileAcaffoldState extends State<MobileAcaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrcolor,
      appBar: appbar,
      drawer: drawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
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
          )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, PercentageIndicator.routname);
              },
              icon: Icon(
                Icons.arrow_forward_outlined,
                size: 25,
              )),
          Text('hello')
        ],
      ),
    );
  }
}
