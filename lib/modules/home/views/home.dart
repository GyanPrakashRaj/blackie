import 'package:flutter/material.dart';

import '../components/home_blog.dart';
import '../../../components/fm_webview.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> with TickerProviderStateMixin<Home> {
  TabController _tabController; //需要定义一个Controller
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTap(int index) {
    setState(() {
      _tabController.animateTo(index);
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: null, titleSpacing: 0),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              HomeBlog(),
              FMWebView(),
              Container(
                child: Text('我的'),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: _onTap,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('社区')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), title: Text('F币')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), title: Text('我的')),
            ],
          )),
    );
  }
}
