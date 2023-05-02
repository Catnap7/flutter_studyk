import 'package:flutter/material.dart';
import 'package:flutter_studyk/common/const/colors.dart';
import 'package:flutter_studyk/common/layout/default_layout.dart';
import 'package:flutter_studyk/home/view/home_screen.dart';
import 'package:flutter_studyk/info/view/info_screen.dart';
import 'package:flutter_studyk/settings/view/settings_screen.dart';
import 'package:flutter_studyk/study/view/study_screen.dart';

class RootTab extends StatefulWidget {
  static String get routeName => 'home';
  const RootTab({Key? key}) : super(key: key);

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin{
  int index = 0;
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(tabListener);

  }

  @override
  void dispose() {
    _tabController.removeListener(tabListener);

    super.dispose();
  }

  void tabListener() {
    setState(() {
      index = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: PRIMARY_COLOR,
        unselectedItemColor: BODY_TEXT_COLOR,
        selectedFontSize: 10,
        backgroundColor: BG_COLOR,
        unselectedFontSize: 10,
        // 밑에 탭 눌렀을 때 효과같은거 설정
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _tabController.animateTo(index);
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_rounded),
            label: 'info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spellcheck_rounded),
            label: 'study',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'settings',
          ),
        ],
      ),
      child: TabBarView(
        controller: _tabController,
        // 화면 옆으로 슬라이드하면 넘길 수 있는 기능 삭제
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          InfoScreen(),
          StudyScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}
