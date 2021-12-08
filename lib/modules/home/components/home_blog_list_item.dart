import 'package:flutter/material.dart';
import '../../../components/fm_webview.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 50.0; // change this for different heights

  CustomAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: new Center(
        child: new Text(
          title,
          style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class HomeBlogListItem extends StatefulWidget {
  @override
  _HomeBlogListItem createState() => _HomeBlogListItem();
}

class _HomeBlogListItem extends State {
  void _toDetail() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return FMWebView();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black12),
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          // 头部, 用户信息相关
          Container(
            width: double.maxFinite,
            height: 60,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  child: Text('用户头像'),
                ),
                Expanded(
                  child: Text('昵称'),
                ),
                Expanded(
                  child: Text('更多操作'),
                )
              ],
            ),
          ),
          // 中部, 文章的内容
          GestureDetector(
            // child: Text('嘻嘻嘻嘻嘻嘻嘻嘻寻寻寻寻寻寻寻寻寻寻寻寻'),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.red,
                child: Text('嘻嘻嘻嘻嘻嘻嘻嘻寻寻寻寻寻寻寻寻寻寻寻寻'),
              ),
              ),
            onTap: _toDetail,
          ),
          // 底部, 微博的操作
          Container(
            width: double.maxFinite,
            height: 50,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  child: Text('点赞'),
                ),
                Expanded(
                  child: Text('回复'),
                ),
                Expanded(
                  child: Text('分享'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
