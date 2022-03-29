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
    // double fullWidth = MediaQuery.of(context).size.width;
    // double halfWidth = fullWidth * .5;

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
        children: const <Widget>[
          MainPageTiles()
        ]
      )
    );
  }
}
