import 'package:flutter/material.dart';

import './home_blog_list_item.dart';

class HomeBlogList extends StatefulWidget {
  @override
  _HomeBlogList createState() => _HomeBlogList();
}

class _HomeBlogList extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return HomeBlogListItem();
      },
    );
  }
}
