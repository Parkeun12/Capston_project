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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // 높이를 80으로 조정
        child: AppBar(
          backgroundColor: BLUE_COLOR,
          title: Text(
            'C언어 스터디',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('object');
              },
            ),
          ],

        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5, // 예시를 위해 5개의 게시글을 생성하도록 설정
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      'https://via.placeholder.com/150',
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '제목',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '본문',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
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