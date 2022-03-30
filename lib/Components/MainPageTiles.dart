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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
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
                    )
              ),
            ),
            Expanded(
                child: AspectRatio(
                    aspectRatio: 1,
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
                            textScaleFactor: 2.7,
                          ),
                          Text('가까운 가게는 직접 가지러 가지요',
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
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          '쇼핑라이브',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'BMHANNA_pro'),
                          textScaleFactor: 1,
                        ),
                      ],
                    )
                  )
                )
            ),
            
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '선물하기',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'BMHANNA_pro'),
                        textScaleFactor: 1,
                      ),
                    ],
                  ),
                )
              )
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        '전국별미',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'BMHANNA_pro'),
                        textScaleFactor: 1,
                      ),
                    ],
                  )
                )
              )
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: SizedBox(
              height: 50,
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
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black87,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                )
                              ),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.paid_outlined),
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
                            style: TextButton.styleFrom(
                              primary: Colors.black87,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)))
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.confirmation_num_outlined),
                                Text('쿠폰함')
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
                            style: TextButton.styleFrom(
                              primary: Colors.black87,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)))
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.redeem),
                                Text('선물함')
                              ],
                            ),
                            onPressed: () {},
                          ),
                        )
                      ),
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.black87,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                topLeft: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                              )
                            ),
                          ),
                          child: Column(
                            children: const [
                              Icon(Icons.favorite_border),
                              Text('찜')
                            ],
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ),
            )
          ],
        )
      ],
    );
  }
}
