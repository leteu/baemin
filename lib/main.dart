import 'package:flutter/material.dart';
import 'Color/Palette.dart';
import 'Components/MainPageTiles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Palette.beaminPrimary,
          fontFamily: 'BMHANNA_air',
          scaffoldBackgroundColor: const Color(0xFFF6F6F6)),
      home: const MainPage(title: 'Flutter Beamin clone coding'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    double halfWidth = fullWidth * .5;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.grid_view,
                color: Colors.white,
              ),
            ),
            Center(
                child: Row(
              children: [
                const Text(
                  '송파구 위례성대로 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Nanum_Gothic'
                  ),
                  textScaleFactor: .8,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.expand_more,
                      color: Colors.white,
                    )),
              ],
            )),
            Row(children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.face,
                    color: Colors.white,
                  ))
            ])
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          // MainPageTiles()
          Row(
            children: [
              SizedBox(
                height: halfWidth,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const [
                      Text(
                        '배달',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'BMHANNA_pro'
                        ),
                        textScaleFactor: 2.7
                      ),
                      Text(
                        '세상은 넓고\n맛집은 많다',
                        style: TextStyle(
                          fontWeight: FontWeight.w400
                        ),
                        textScaleFactor: 1.5
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: halfWidth,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const [
                      Text(
                        '배민1',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'BMHANNA_pro'
                        ),
                        textScaleFactor: 4,
                      ),
                      Text('한 번에 한 집만\n빠르게 배달해요!',
                          style: TextStyle(fontWeight: FontWeight.w400),
                          textScaleFactor: 1.5)
                    ],
                  ),
                ),
              ),
            ],
          ),

          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 2,
            child: Column(
              children: const <Widget>[
                Text(
                  '포장',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'BMHANNA_pro'
                  ),
                  textScaleFactor: 3,
                ),
                Text('가까운 가게는 직접 가지러 가지요',
                    style: TextStyle(fontWeight: FontWeight.w400),
                    textScaleFactor: 1.5)
              ],
            )
          ),

          Row(
            children: [
              Card(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '쇼핑라이브',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'BMHANNA_pro'
                        ),
                        textScaleFactor: 1.4,
                      ),
                    ],
                  )
              ),
              Card(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '선물하기',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'BMHANNA_pro'
                        ),
                        textScaleFactor: 1.4,
                      ),
                    ],
                  )
              ),
              Card(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '전국별미',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'BMHANNA_pro'
                        ),
                        textScaleFactor: 1.4,
                      ),
                    ],
                  )
              ),
            ],
          ),

          SizedBox(
            height: halfWidth,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              elevation: 2,
              child: const Text('1')
            )
          )
        ]
      )
    );
  }
}
