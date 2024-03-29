import 'package:flutter/material.dart';

class infoList extends StatefulWidget {
  const infoList({Key? key}) : super(key: key);

  @override
  _infoListState createState() => _infoListState();
}

class _infoListState extends State<infoList> {
  @override
  Widget build(BuildContext context) {
    final List<String> numbers = <String> ["12가 1234", "34너 1234", "56가 1234", "11가 1234", "16가 1234", "105어 1234", "123가 1234", "124가 1234"];
    final List<String> company = <String> ["글로벌", "대한", "한국", "대우", "글로벌", "대한", "글로벌", "대우"];
    final List<String> times = <String> ["7:40", "8:10", "7:10", "7:30", "7:10", "8:10", "7:30", "8:20"];
    final List<String> arrive = <String> ["8:40", "8:40", "8:10", "8:20", "8:15", "8:50", "8:40", "8:55"];
    final List<String> now = <String> ["진접역", "롯데시네마", "동연평교차로", "진접역", "롯데시네마", "M타워", "주곡2교", "M타워"];
    final List<String> people = <String> ["15", "20", "21", "30", "11", "15", "24", "27"];
    final List<String> name = <String> ["오진태", "김영길", "이영태", "김영남", "이준구", "최호연", "이우진", "황준태"];
    // 차량번호, 회사, 출발시간 등의 정보를 담은 리스트들을 임의로 정의
    return Container(
      // 정보를 표시할 Container를 생성
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // 표의 헤더 부분을 생성
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1),
              ),
            ),
            child: Row(
              // 각 열의 제목을 표시하는 컨테이너들을 생성
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "차량번호",
                      textAlign: TextAlign.center,
                      style: listViewTitleStyle(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "운행 회사 상호",
                      textAlign: TextAlign.center,
                      style: listViewTitleStyle(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "출발시간",
                      textAlign: TextAlign.center,
                      style: listViewTitleStyle(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "도착예정",
                      textAlign: TextAlign.center,
                      style: listViewTitleStyle(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "현재 위치",
                      textAlign: TextAlign.center,
                      style: listViewTitleStyle(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "탑승인원",
                      textAlign: TextAlign.center,
                      style: listViewTitleStyle(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      "기사명",
                      textAlign: TextAlign.center,
                      style: listViewTitleStyle(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // ListView를 사용하여 각 정보를 동적으로 생성
            flex: 1,
            child: Container(
              child: ListView.builder(
                itemCount: numbers.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                  child: Column(
                    children: [
                      // 각 정보를 표시하는 Row를 생성
                      Row(
                        children: [
                          Expanded(
                            // 차량 번호, 회사, 출발시간, 도착예정, 현재위치, 탑승인원, 기사명을 표시하는 각 컨테이너를 생성
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(width: 1),
                                ),
                              ),
                              child: Text(
                                "${numbers[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(width: 1),
                                ),
                              ),
                              child: Text(
                                "${company[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(width: 1),
                                ),
                              ),
                              child: Text(
                                "${times[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(width: 1),
                                ),
                              ),
                              child: Text(
                                "${arrive[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(width: 1),
                                ),
                              ),
                              child: Text(
                                "${now[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(width: 1),
                                ),
                              ),
                              child: Text(
                                "${people[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(width: 1),
                                ),
                              ),
                              child: Text(
                                "${name[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle listViewTitleStyle() {
  return const TextStyle(
    height: 3.0,
    fontSize: 22.2,
    fontWeight: FontWeight.bold,
  );
}
