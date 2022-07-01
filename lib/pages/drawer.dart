import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('翻译'),
              currentAccountPicture: null,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      //image: NetworkImage(
                      //"https://github.com/Wenweipeng/test/blob/main/open_animation.jpg"))),
                      image: AssetImage('images/bg_account_switcher.png'))),
            ),
            ListTile(
              title: Text(
                '首页',
                style: TextStyle(
                  color: Colors.blue[600],
                ),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue[600],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('翻译收藏'),
              leading: Icon(
                Icons.stars,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('离线翻译'),
              leading: Icon(
                Icons.translate,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('设置'),
              leading: Icon(
                Icons.settings,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
