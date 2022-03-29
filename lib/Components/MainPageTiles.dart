// ignore_for_file: file_names, import_of_legacy_library_into_null_safe, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math' as math;

class MainPageTiles extends StatefulWidget {
  const MainPageTiles({Key? key}) : super(key: key);

  @override
  State<MainPageTiles> createState() => _MainPageTilesState();
}

class _MainPageTilesState extends State<MainPageTiles> {
  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    double halfWidth = fullWidth * .5;

    return Container(
      width: fullWidth,
      padding: const EdgeInsets.only(
        left: 20,
        top: 20
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                )
              ],
            ),
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
        ],
      ),
    );
  }
}
