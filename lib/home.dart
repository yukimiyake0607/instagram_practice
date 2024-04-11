import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sample03/pages/feed_page.dart';
import 'package:flutter_sample03/pages/my_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static final _screens = [
    MyPage(),
    FeedPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: BottomNavigationBar(
            iconSize: 30,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: ''),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1365086104198672384/J52Bq-rs_400x400.jpg'),
                  ),
                  label: ''),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ));
  }
}
