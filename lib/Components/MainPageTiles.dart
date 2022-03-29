// ignore_for_file: file_names, import_of_legacy_library_into_null_safe, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math' as math;

class MainPageTiles extends StatefulWidget {
  const MainPageTiles({Key? key}) : super(key: key);

  @override
  State<MainPageTiles> createState() => _MainPageTilesState();
}

class _MainPageTilesState extends State<MainPageTiles> {
  final GlobalKey _square = GlobalKey();

  _getWidth(GlobalKey key) {
    if (key.currentContext != null) {
      final RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;
      Size size = renderBox.size;
      return size.width;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
                child: SizedBox(
                    key: _square,
                    height: _getWidth(_square),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 2,
                      child: Column(
                        children: const [
                          Text('배달',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'BMHANNA_pro'),
                              textScaleFactor: 2.7),
                          Text('세상은 넓고\n맛집은 많다',
                              style: TextStyle(fontWeight: FontWeight.w400),
                              textScaleFactor: 1.5)
                        ],
                      ),
                    ))),
            Expanded(
                child: SizedBox(
                    height: _getWidth(_square),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 2,
                      child: Column(
                        children: const [
                          Text(
                            '배민1',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'BMHANNA_pro'),
                            textScaleFactor: 2.7,
                          ),
                          Text('한 번에 한 집만\n빠르게 배달해요!',
                              style: TextStyle(fontWeight: FontWeight.w400),
                              textScaleFactor: 1.5)
                        ],
                      ),
                    )))
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 2,
                child: Column(
                  children: const <Widget>[
                    Text(
                      '포장',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'BMHANNA_pro'),
                      textScaleFactor: 3,
                    ),
                    Text('가까운 가게는 직접 가지러 가지요',
                        style: TextStyle(fontWeight: FontWeight.w400),
                        textScaleFactor: 1.5)
                  ],
                )
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: SizedBox(
              height: _getWidth(_square) / 3,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '쇼핑라이브',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'BMHANNA_pro'),
                        textScaleFactor: 1.4,
                      ),
                    ],
                  )),
            )),
            Expanded(
                child: SizedBox(
              height: _getWidth(_square) / 3,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '선물하기',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'BMHANNA_pro'),
                        textScaleFactor: 1.4,
                      ),
                    ],
                  )),
            )),
            Expanded(
                child: SizedBox(
              height: _getWidth(_square) / 3,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '전국별미',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'BMHANNA_pro'),
                        textScaleFactor: 1.4,
                      ),
                    ],
                  )),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: SizedBox(
              height: _getWidth(_square) * 0.75,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 2,
                child: const Center(child: Text('광고자리')),
              ),
            ))
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: _getWidth(_square) / 3,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.grey,
                                width: .25
                              )
                            )
                          ),
                          child: TextButton(
                            child: Column(
                              children: const [
                                Text('포인트')
                              ],
                            ),
                            onPressed: () {},
                          ),
                        )
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.grey,
                                width: .25
                              )
                            )
                          ),
                          child: TextButton(
                            child: Column(
                              children: const [
                                Text('포인트')
                              ],
                            ),
                            onPressed: () {},
                          ),
                        )
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.grey,
                                width: .25
                              )
                            )
                          ),
                          child: TextButton(
                            child: Column(
                              children: const [
                                Text('포인트')
                              ],
                            ),
                            onPressed: () {},
                          ),
                        )
                      ),
                      Expanded(
                        child: TextButton(
                          child: Column(
                            children: const [
                              Text('포인트')
                            ],
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
