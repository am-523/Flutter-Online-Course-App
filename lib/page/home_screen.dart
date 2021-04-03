import 'package:flutter/material.dart';
import 'package:online_education_app/theme.dart';
import 'package:online_education_app/widget/navbar_item.dart';
import 'package:online_education_app/widget/subject_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: SafeArea(
        bottom: false,
        child: Container(
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
          child: ListView(
            children: [
              SizedBox(
                height: edge,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Asril",
                          style: regularTextStyle.copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Find your course",
                          style: blackTextStyle.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/btn_search.png',
                      width: 43,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff99B7FF),
                      Color(0xff6077F7),
                    ],
                  ),
                  color: Colors.purple[900],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '70% off',
                            style: whiteTextStyle.copyWith(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mar 30 - Apr 5',
                            style: whiteTextStyle.copyWith(fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffFE876C),
                                  Color(0xffFD5D37),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Text(
                                'Join Now',
                                style: whiteTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/course.png',
                            width: 130,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //Subject
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Subject',
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
                        style: softpurpleColorTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubjectItem(
                      name: 'Mathematics',
                      imageUrl: 'assets/pic1.png',
                    ),
                    SubjectItem(
                      name: 'Bahasae',
                      imageUrl: 'assets/pic2.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubjectItem(
                      name: 'Fisika',
                      imageUrl: 'assets/pic3.png',
                    ),
                    SubjectItem(
                      name: 'Olahraga',
                      imageUrl: 'assets/pic4.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/Home.png',
              name: 'Home',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Paper.png',
              name: 'Cart',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Work.png',
              name: 'Course',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Profile.png',
              name: 'Profile',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
