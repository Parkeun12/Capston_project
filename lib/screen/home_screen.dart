import 'package:capston_project/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:capston_project/screen/income_screen.dart';

class MainScreen extends StatelessWidget {
  final int number;

  const MainScreen({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
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
          itemCount: 5,
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
              currentAccountPicture: CircleAvatar(
                backgroundColor: WHITE_COLOR,
              ),
              accountName: Text('이름'),
              accountEmail: Text('email@naver.com'),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '멤버',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ButtonTheme(
                    padding: EdgeInsets.zero,
                    minWidth: 0,
                    child: TextButton(
                      onPressed: (){
                        showModalBottomSheet(
                          context: context,
                          isDismissible: true,
                          builder: (_) => IncomeScreen(),

                          isScrollControlled: true,
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            '들어온 신청',
                            style: TextStyle(
                              color: DARK_GREY_COLOR,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: BLUE_COLOR,
              ),
              title: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('이름'),
                    TextButton(
                      onPressed: () {
                        // 버튼이 클릭되었을 때
                        print('Button clicked');
                      },
                      child: Text(
                        '내보내기',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: DARK_GREY_COLOR,
              ),
              title: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('이름2'),
                    TextButton(
                      onPressed: () {
                        // 버튼이 클릭되었을 때
                        print('Button clicked');
                      },
                      child: Text(
                        '내보내기',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
