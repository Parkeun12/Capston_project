import 'package:flutter/material.dart';
import 'package:capston_project/screen/home_screen.dart';
import 'package:capston_project/settings_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);
  @override
  State createState() => _RootScreenState();
}

class _RootScreenState extends State with TickerProviderStateMixin {
  TabController? controller;
  double threshold = 2.7;
  int number = 1;


  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this); // 컨트롤러 초기화
//컨트롤러 속성이 변경될 때 마다 실행할 함수 등록
    controller!.addListener(tabListener);

  }

  tabListener() {
    setState(() {

    });
  }

  @override
  void dispose() {
    controller!.removeListener(tabListener); //리스너에 등록한 함수 등록 취소들기 감지 중지
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller, // 컨트롤러 등록하기
        children: rendChildren(),
      ),
      bottomNavigationBar: renderBootomNavigation(),
    );
  }

  List<Widget> rendChildren(){
    return [
      HomeScreen(number: number),
      SettingsScreen(
          threshold: threshold, onThresholdChange: onThresholdChange
      ),
    ];
  }

  //슬라이더 값 변경 시 실행되는 함수
  void onThresholdChange(double val) {
    setState(() {
      threshold = val;
    });
  }

  BottomNavigationBar renderBootomNavigation() {
    return BottomNavigationBar(
      //현재 화면에 렌더링되는 탭의 인덱스
      currentIndex: controller!.index,
      onTap: (int index){ //탭이 선택될 때마다 실행되는 함수
        setState(() {
          controller!.animateTo(index);
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.edgesensor_high_outlined,
          ),
          label: '주사위',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: '설정',
        ),
      ],
    );
  }
}