import 'package:flutter/material.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/views/about_page.dart';
import 'package:shopx/views/favorite_page.dart';
import 'package:shopx/views/shop_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({ Key key }) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorStyles.primaryColor,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Beauty"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
            accountEmail: Text("Shining"),
            decoration: BoxDecoration(
              color: ColorStyles.secondaryColor,
            ),
          ),
          DrawerListTile(
            iconData: Icons.local_mall,
            title: "Shop",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ShopPage()));
            },
          ),
          DrawerListTile(
            iconData: Icons.favorite,
            title: "Favorite",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => FavoritePage()));
            },
          ),
          DrawerListTile(
            iconData: Icons.info_outline,
            title: "About",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => AboutPage()));
            },
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Logout",
            onTilePressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (_) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key key, this.iconData, this.title, this.onTilePressed}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16)),
    );
  }
}