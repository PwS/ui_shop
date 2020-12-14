import 'package:flutter/material.dart';
import 'ProductCard.dart';
import 'CustomIcon.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List<Widget> bottomNavIconList = [
    Image.asset(
      "assets/toko.png",
      width: 35.0,
      height: 35.0,
    ),
    Icon(
      CustomIcons.search,
      size: 32.0,
    ),
    Icon(
      CustomIcons.favorite,
      size: 32.0,
    ),
    Icon(CustomIcons.cart, size: 32.0),
    Image.asset("assets/putra.png", width: 35.0, height: 35.0,)
  ];

  @override
  Widget build(BuildContext context) {
    Widget image_slider = Container(
      height: 300.0,
      child: Card(
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/koko.jpg'),
            AssetImage('assets/bajumuslim1.jpg'),
            AssetImage('assets/baju1.jpg'),
            AssetImage('assets/mukenah.jpg'),
            AssetImage('assets/sepatu1.jpeg'),
          ],
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          image_slider,
          Divider(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/baju1.jpg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Divider(),
                          Text('Jaket D & F',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 16.0,
                                  fontFamily: "Helvetica"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/bajumuslim1.jpg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Divider(),
                          Text('Muslim Cewek',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 16.0,
                                  fontFamily: "Helvetica"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/mukenah.jpg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Divider(),
                          Text('Mukenah',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 16.0,
                                  fontFamily: "Helvetica"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/sepatu1.jpeg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Divider(),
                          Text('Sepatu Slipon',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 16.0,
                                  fontFamily: "Helvetica"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/koko.jpg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Divider(),
                          Text('Koko Keceh',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 16.0,
                                  fontFamily: "Helvetica"))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: new Column(
                children: <Widget>[
                  ProductCard(0xFFfaecfb, "assets/koko.jpg", "Koko MOC",
                      "\Rp. 199.000", "\Rp. 399.000"),
                  SizedBox(
                    height: 32.0,
                  ),
                  ProductCard(0xFFf8e1da, "assets/bajumuslim1.jpg",
                      "Baju Muslimah", "\Rp. 250.000", "\Rp. 500.000")
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(0.065),
              offset: Offset(0.0, -3.0),
              blurRadius: 10.0)
        ]),
        child: Row(
          children: bottomNavIconList.map((item) {
            var index = bottomNavIconList.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: bottomNavItem(item, index == _currentIndex),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
  decoration: BoxDecoration(
      boxShadow: isSelected
          ? [
        BoxShadow(
            color: Colors.black12.withOpacity(0.02),
            offset: Offset(0.0, 5.0),
            blurRadius: 10.0)
      ]
          : []),
  child: item,
);
