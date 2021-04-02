import 'package:flutter/material.dart';
import 'package:online_education_app/page/detail_screen.dart';
import 'package:online_education_app/theme.dart';

class SubjectItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  SubjectItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 170,
          width: 160,
          color: whiteColor,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  '$imageUrl',
                  width: 80,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: ' $name',
                        style: blackTextStyle.copyWith(fontSize: 14))
                  ]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: ' 10/month',
                          style: regularTextStyle.copyWith(fontSize: 14))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                  Align(alignment: Alignment.center, child: Text('4.5'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
