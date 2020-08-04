import 'package:flutter/material.dart';

class MidContainer extends StatelessWidget {
  String img;
  String name;
  String fullname;
  String code;
  String cost;
  String pl;
  MidContainer(
      {this.img, this.name, this.fullname, this.code, this.cost, this.pl});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width - 80,
      height: height / 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
                offset: const Offset(5.0, 5.0),
                blurRadius: 2.0,
                spreadRadius: 5.0,
                color: Colors.black87.withOpacity(0.2)),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: NetworkImage(img),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      fullname,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      code,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      cost,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      pl,
                      style: TextStyle(fontSize: 13, color: Colors.green),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
