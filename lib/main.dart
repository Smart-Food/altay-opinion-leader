import 'package:flutter/material.dart';
import 'package:opinionleader/home.dart';
import 'package:opinionleader/search.dart';
import 'package:opinionleader/favorite.dart';
import 'package:opinionleader/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:opinionleader/news/newsList.dart';
import 'package:opinionleader/data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Opinion leader',
      home: BottomNavigationBarScreen(),
    );
  }
}

class BottomNavigationBarScreen extends StatefulWidget {
  BottomNavigationBarScreen({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int selectedIndex = 0;

  PageController controller = PageController();

  List<GButton> tabs = new List();
  final List<Widget> _children = [
    NewsList(),
    Search(),
    Favorite(),
    Profile(),
  ];

  @override
  void initState() {
    super.initState();

    var padding = EdgeInsets.symmetric(horizontal: 12, vertical: 5);
    double gap = 30;

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.blue,
      iconColor: Colors.blue,
      textColor: Colors.blue,
      color: Colors.blue[50],
      iconSize: 24,
      padding: padding,
      icon: Icons.home,
      text: 'Главная',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.blue,
      iconColor: Colors.blue,
      textColor: Colors.blue,
      color: Colors.blue[50],
      iconSize: 24,
      padding: padding,
      icon: Icons.search,
      text: 'Поиск',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.blue,
      iconColor: Colors.blue,
      textColor: Colors.blue,
      color: Colors.blue[50],
      iconSize: 24,
      padding: padding,
      icon: Icons.favorite,
      text: 'Активность',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.blue,
      iconColor: Colors.blue,
      textColor: Colors.blue,
      color: Colors.blue[50],
      iconSize: 24,
      padding: padding,
      icon: Icons.person,
      text: 'Профиль',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: PageView.builder(
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
            });
          },
          controller: controller,
          itemBuilder: (context, position) {
            return Container(child: _children[position],);
          },
          itemCount: tabs.length, // Can be null
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            decoration: BoxDecoration(color :Colors.white,boxShadow: [
              BoxShadow(spreadRadius: -10, blurRadius: 60, color: Colors.black.withOpacity(.20), offset: Offset(0,15))
            ]),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: GNav(
                  tabs: tabs,
                  selectedIndex: selectedIndex,
                  onTabChange: (index) {
                    print(index);
                    setState(() {
                      selectedIndex = index;
                    });
                    controller.jumpToPage(index);
                  }),
            ),
          ),
        ),
      );
  }
}