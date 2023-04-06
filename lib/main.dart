import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Text(
                      '경북소프트웨어고등학교',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.rotate_left, size: 28, color: Colors.grey)
                  ],
                )
              ],
            ),
            const Icon(
              Icons.notifications,
              size: 36,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(14, 10, 0, 20),
                  child: const Text(
                    '2023년 4월 6일 목요일',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 30,
                      margin: const EdgeInsets.fromLTRB(0, 10, 10, 20),
                      child: OutlinedButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print('Today pressed');
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          elevation: 0.0,
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.white,
                          side:
                              const BorderSide(color: Colors.blue, width: 1.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text(
                          '오늘',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: const EdgeInsets.fromLTRB(0, 10, 15, 20),
                      child: OutlinedButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print('Tomorrow pressed');
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          elevation: 0.0,
                          foregroundColor: Colors.grey,
                          backgroundColor: Colors.white,
                          side:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          shape: const StadiumBorder(),
                        ),
                        child: const Text(
                          '내일',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: 190,
                      height: 210,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(
                              width: 1.0,
                              color: Color.fromARGB(255, 226, 226, 226)),
                        ),
                        elevation: 0.0,
                        color: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.all(18),
                          child: const Text(
                            '시간표',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: 190,
                      height: 210,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(
                              width: 1.0,
                              color: Color.fromARGB(255, 226, 226, 226)),
                        ),
                        elevation: 0.0,
                        color: Colors.white,
                        child: Container(
                            margin: const EdgeInsets.all(18),
                            child: const Text(
                              '급식',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    width: 390,
                    height: 100,
                    margin: const EdgeInsets.all(5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 226, 226, 226)),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  child: const Text(
                                    '캘린더',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  '캘린더에 새로운 일정을 등록해보세요',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                    width: 390,
                    height: 100,
                    margin: const EdgeInsets.all(5),
                    child: Card(
                      color: const Color.fromARGB(255, 37, 126, 228),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  child: const Text(
                                    '2023 나의 성적 그래프 만들기',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  '#3월모의고사 #성적그래프',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 500, 0, 0),
              child: const Text('Hello World!'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: '수다방',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '학원검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            label: '랭킹',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: '설정',
          ),
        ],
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(color: Colors.blue),
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
      ),
    );
  }
}
