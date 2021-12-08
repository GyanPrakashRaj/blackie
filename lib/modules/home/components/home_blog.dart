import 'package:flutter/material.dart';

import '../models/layout.dart';

import './home_blog_list.dart';

class HomeBlog extends StatefulWidget {
  @override
  _HomeBlog createState() => _HomeBlog();
}

class _HomeBlog extends State<HomeBlog>
    with TickerProviderStateMixin<HomeBlog> {
  final List tabs = [
    LayoutTabItem(title: '最新微博'),
    LayoutTabItem(title: '热门微博')
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Expanded(
          flex: 0,
          child: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  '最新微博',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Tab(
                child: Text(
                  '热门微博',
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[HomeBlogList(), HomeBlogList()],
          ),
        )
      ],
    );
  }
}
