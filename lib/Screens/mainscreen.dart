import 'package:flutter/material.dart';

import 'Components/Header.dart';
import 'Components/infoList.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key ? key}) : super (key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: false,
        title: const Header(),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: infoList())
        ],
      ),
    );
  }
}