import 'package:flutter/material.dart';
import 'package:online_education_app/theme.dart';

class OutlineItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String time;
  OutlineItem({this.name, this.imageUrl, this.time});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 90,
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFFFFFF),
              Color(0xffFFFFFF),
            ],
          ),
          color: Colors.purple[900],
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                '$imageUrl',
                width: 63,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$name',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '$time',
                        style: greyTextStyle.copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset('assets/play.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
