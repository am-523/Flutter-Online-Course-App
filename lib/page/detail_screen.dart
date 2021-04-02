import 'package:flutter/material.dart';
import 'package:online_education_app/theme.dart';
import 'package:online_education_app/widget/outline_item.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFFFBFB),
                    Color(0xffEEEEEE),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 107,
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffFD9E88),
                          Color(0xffFE6540),
                        ],
                      ),
                      color: Colors.purple[900],
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sains',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/star.png',
                                      width: 20,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      ' 3.5 (140 Reviews)',
                                      style:
                                          whiteTextStyle.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 90,
                                width: 92,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFDB63B),
                                      Color(0xffFDB747),
                                    ],
                                  ),
                                  color: Colors.purple[900],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  border:
                                      Border.all(width: 1, color: whiteColor),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Color(0xffFDB63B).withOpacity(0.8),
                                      blurRadius: 3,
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Text(
                                      'Fee',
                                      style:
                                          whiteTextStyle.copyWith(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'IDR 22',
                                      style:
                                          whiteTextStyle.copyWith(fontSize: 22),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/book.png',
                    width: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Outline',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'See all',
                            style:
                                softpurpleColorTextStyle.copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlineItem(
                        imageUrl: 'assets/img.png',
                        name: 'Order of Operation',
                        time: '17.11 min',
                      ),
                      OutlineItem(
                        imageUrl: 'assets/img-1.png',
                        name: 'Sin, Cos, Tangen',
                        time: '15.11 min',
                      ),
                    ],
                  ),
                  Container(
                    width: 360,
                    height: 63,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff96B4FF),
                          Color(0xff657CF8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Image.asset(
                            'assets/lock.png',
                            width: 43,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Text(
                            'Unlock Course Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                        Image.asset(
                          'assets/arrow.png',
                          width: 43,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 30,
                    ),
                  ),
                  Text(
                    ' Details',
                    style: blackTextStyle.copyWith(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Image.asset(
                      isClicked ? 'assets/Heart1.png' : 'assets/Heart.png',
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
