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
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: const Text(
                    '2023년 4월 6일 목요일',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                        child: const Text('오늘'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                        child: const Text('내일'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 40, 0, 20),
                  child: const Text(
                    '오늘의 일정',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                      width: 180,
                      height: 140,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side:
                              const BorderSide(width: 1.0, color: Colors.blue),
                        ),
                        elevation: 0.0,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                '6일(목)',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                      width: 180,
                      height: 140,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side:
                              const BorderSide(width: 1.0, color: Colors.blue),
                        ),
                        elevation: 0.0,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                '7일(금)',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
