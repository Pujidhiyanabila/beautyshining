import 'package:flutter/material.dart';
import 'package:shopx/category/blush_page.dart';
import 'package:shopx/category/bronzer_page.dart';
import 'package:shopx/category/eyebrow_page.dart';
import 'package:shopx/category/eyeliner_page.dart';
import 'package:shopx/category/eyeshadow_page.dart';
import 'package:shopx/category/foundation_page.dart';
import 'package:shopx/category/lip_liner_page.dart';
import 'package:shopx/category/lipstick_page.dart';
import 'package:shopx/category/mascara_page.dart';
import 'package:shopx/category/nail_polish_page.dart';
import 'package:shopx/common/style.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({ Key key }) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget> [
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => BlushPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/blush.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Blush", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => BronzerPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/bronzer.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Bronzer", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => EyebrowPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/eyebrow.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Eyebrow", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => EyelinerPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/eyeliner.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Eyeliner", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => EyeshadowPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/eyeshadow.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Eyeshadow", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => FoundationPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/foundation.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Foundation", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => LipLinerPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/lip_liner.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Lip liner", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => LipstickPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/lipstick.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Lipstick", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => MascaraPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/mascara.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Mascara", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => NailPolishPage()));
                },
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/nail_polish.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          color: ColorStyles.primaryColor
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      FittedBox(child: Text("Nail polish", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}