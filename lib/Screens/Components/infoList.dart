import 'package:flutter/material.dart';

class infoList extends StatefulWidget {
  const infoList({Key? key}) : super(key: key);

  @override
  _infoListState createState() => _infoListState();
}

class _infoListState extends State<infoList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "차량번호"
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
