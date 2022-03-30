// ignore_for_file: file_names, import_of_legacy_library_into_null_safe, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

class MainPageTiles extends StatefulWidget {
  const MainPageTiles({Key? key}) : super(key: key);

  @override
  State<MainPageTiles> createState() => _MainPageTilesState();
}

class _MainPageTilesState extends State<MainPageTiles> {
  List<Widget> adsens = [
    Image.asset("assets/images/adsens_1.png"),
    Image.asset("assets/images/adsens_2.png"),
    Image.asset("assets/images/adsens_3.png"),
    Image.asset("assets/images/adsens_4.png"),
    Image.asset("assets/images/adsens_5.png"),
  ];

  int currentAdsens = 1;

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
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/baedal.png'), // 배경 이미지
                          ),
                        ),
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
                      
                    )
              ),
            ),
            Expanded(
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pojang.png'), // 배경 이미지
                          ),
                        ),
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
                      )
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
                      children: <Widget>[
                        Image.asset('assets/icon/shop_live.png'),
                        const Text(
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
                    children: <Widget>[
                      Image.asset('assets/icon/gift.png'),
                      const Text(
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
                    children: <Widget>[
                      Image.asset('assets/icon/delicacy.png'),
                      const Text(
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
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                  child: Stack(
                    children: [
                      CarouselSlider(
                        items: adsens.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: i,
                              );
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          height: 114,
                          onPageChanged: (int idx, item) {
                            setState(() {
                              currentAdsens = idx+1;
                            });
                          }
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 0, 0, .5),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,

                            top: 4,
                            bottom: 4
                          ),
                          child: Text(
                            '$currentAdsens / 5  모두보기',
                            style: const TextStyle(color: Colors.white, fontFamily: 'Nanum_Gothic'),
                            textScaleFactor: .75,
                          ),
                        )
                      )
                    ],
                  )
                ),
              ),
            )
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
