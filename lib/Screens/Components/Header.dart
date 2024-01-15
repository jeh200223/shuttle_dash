import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

import '../../Constants/responsive.dart';

class Header extends StatefulWidget {
  const Header ({Key ? key}) : super (key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header>{
  @override
  Widget build(BuildContext context) {
    bool tablet = Responsive.isTablet(context);
    return Row(
      children: [
        Expanded(
          flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 150, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    style: BorderStyle.solid,
                    color: Colors.black,
                )
              ),
              child: Text(
               "스쿨버스 운행 안내 시스템",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: tablet ? 27 : 40,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.fromLTRB(50, 20, 20, 20),
            child: TimerBuilder.periodic(
                const Duration(seconds: 1),
                builder: (context) {
                  return Text(
                    DateFormat('yyyy-MM-dd a hh:mm:ss').format(DateTime.now()),
                    style: TextStyle(
                      fontSize: tablet ? 27 : 40,
                      color: Colors.black,
                      decoration: TextDecoration.none
                    ),
                    textAlign: TextAlign.center,
                  );
                }
            ),
        ),
        ),
      ],
    );
  }
}