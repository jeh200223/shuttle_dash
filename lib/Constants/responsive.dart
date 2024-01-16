import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile; // 모바일 화면용 위젯
  final Widget? tablet; // 태블릿 화면용 위젯 (선택적, null일 수 있음)
  final Widget desktop; // 데스크톱 화면용 위젯

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  // 현재 장치가 모바일인지 확인하는 메서드
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  // 현재 장치가 태블릿인지 확인하는 메서드
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1300 &&
          MediaQuery.of(context).size.width >= 850;

  // 현재 장치가 데스크톱인지 확인하는 메서드
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1300;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // 장치의 폭에 따라 적절한 위젯을 반환
    if (_size.width >= 1300) {
      return desktop;
    } else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}