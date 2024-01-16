import 'package:flutter/material.dart';

import '../Constants/responsive.dart';
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
    bool tablet = Responsive.isTablet(context);
    // 현재 장치가 태블릿인지 확인
    return Scaffold(
      appBar: AppBar(
        // 앱바 설정
        toolbarHeight: tablet ? 50 : 90,
        // 태블릿 또는 모바일에 따라 앱바 높이 조절
        centerTitle: false,
        title: const Header(),
        // Header 위젯을 앱바 타이틀로 사용
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        // 본문 설정
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            // 두 번째 행 (infoList 위젯을 통해 각 정보 리스트 표시)
            flex: 1,
            child: infoList())
        ],
      ),
    );
  }
}