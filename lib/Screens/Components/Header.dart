import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // 날짜 및 시간 형식 지원을 위한 패키지, pubspec.yaml에 작성하여 사용
import 'package:timer_builder/timer_builder.dart'; // 시간에 따라 변하는 위젯을 생성하기 위한 패키지, pubspec.yaml에 작성하여 사용
import '../../Constants/responsive.dart'; // 사용자 정의 반응형(Responsive) 유틸리티 클래스를 가져옴

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    bool tablet = Responsive.isTablet(context);
    // 현재 장치가 태블릿인지 확인하는 반응형 유틸리티를 사용
    return Row(
      // 두 개의 컨테이너를 포함하는 행을 생성
      children: [
        Expanded(
          // 첫 번째 컨테이너 - 프로젝트 이름 표시
          flex: 1,
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 150, 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.black,
                )),
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
          // 두 번째 컨테이너 - 현재 날짜와 시간을 보여주는 TimerBuilder 사용
          flex: 1,
          child: Container(
            margin: EdgeInsets.fromLTRB(50, 20, 20, 20),
            child: TimerBuilder.periodic(const Duration(seconds: 1),
                builder: (context) {
              return Text(
                DateFormat('yyyy-MM-dd a hh:mm:ss').format(DateTime.now()),
                style: TextStyle(
                    fontSize: tablet ? 27 : 40,
                    color: Colors.black,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center,
              );
            }),
          ),
        ),
      ],
    );
  }
}
