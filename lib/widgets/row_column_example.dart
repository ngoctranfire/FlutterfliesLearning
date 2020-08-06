import 'package:flutter/material.dart';

class RowColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Columns Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.yellow,
            width: double.infinity,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 100,
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 100,
            child: Center(child: Text("Red Text Goes SAhowings")),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width / 2,
                height: 200,
              ),
              GestureDetector(
                onTap: () {
                  print("Tapped the black box");
                },
                child: Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
