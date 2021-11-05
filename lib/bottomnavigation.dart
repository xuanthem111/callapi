import 'package:flutter/material.dart';
import 'package:testflutter/app5.dart';
import 'package:testflutter/listview_basic.dart';
import 'package:testflutter/listview_quit.dart';
import 'package:testflutter/main.dart';
import 'package:testflutter/myapp2.dart';
import 'package:testflutter/profile_page.dart';
import 'package:testflutter/register.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: pageController,
        children: [MyApp3(), App6(), Proflie(), MyApp2()],
        onPageChanged: (index) {
          selectedIndex = index;
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Colors.white54,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            title: Text(
              "HOME",
              style: TextStyle(fontSize: 8),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("SEARCH", style: TextStyle(fontSize: 8)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            title: Text("DOWNLOADS", style: TextStyle(fontSize: 8)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("PROFILE", style: TextStyle(fontSize: 8)),
          )
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            pageController.animateToPage(selectedIndex,
                duration: Duration(microseconds: 200), curve: Curves.linear);
          });
        },
      ),
    );
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}
