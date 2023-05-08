import 'package:capston_project/const/colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final int number;

  const MainScreen({
    required this.number,
    Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: BLUE_COLOR,

        title: Text('C언어 스터디'),

        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: (){
                print('object');
              }
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar( //프로필사진
                //backgroundImage로 이미지 삽입가능
                backgroundColor: WHITE_COLOR,
              ),
              accountName: Text('이름'),
              accountEmail: Text('email@naver.com'),
            ),
            ListTile(
              title: Text(
                  '멤버',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: BLUE_COLOR,
              ),
              title: Text('이름'),
              //trailing: Text('내보내기'), 관리자설정에서 내보낼 수 있게
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: DARK_GREY_COLOR,
              ),
              title: Text('이름2'),
              //trailing: Text('내보내기'), 관리자설정에서 내보낼 수 있게
            )
          ],
        ),
      ),
    );
  }
}