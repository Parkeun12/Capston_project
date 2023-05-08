import 'package:flutter/material.dart';
import 'package:capston_project/screen/home_screen.dart';
import 'package:capston_project/screen/edit_screen.dart';
import 'package:capston_project/screen/calendar_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);
  @override
  State createState() => _RootScreenState();
}

class _RootScreenState extends State with TickerProviderStateMixin {
  TabController? controller;
  int number = 2;


  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this); // 컨트롤러 초기화
//컨트롤러 속성이 변경될 때 마다 실행할 함수 등록
    controller!.addListener(tabListener);

  }

  tabListener() {
    setState(() {

    });
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
      MainScreen(number: number),
      HomeScreen(number: number),
      Edit(number: number),
    ];
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
            Icons.home,
          ),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month,
          ),
          label: '일정',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.edit,
          ),
          label: '게시글 작성',
        ),
      ],
    );
  }
}