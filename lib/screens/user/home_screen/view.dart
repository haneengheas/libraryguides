import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/user/home_screen/books_box.dart';
import 'package:library_guide/widgets/logo.dart';

class HomePageScren extends StatelessWidget {
  const HomePageScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
            child: Logo(
          height: 100,
        )),
        SizedBox(
          height: 20,
        ),
        Center(
            child: Text(
          'الصفحة الرئيسية ',
          style: labelStyle,
        )),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: sizeFromHeight(context, 1.4),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'مقترحات الكتب',
                      style: appbarStyle,
                    ),
                  ),
                  BooksBox(4),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'روايات',
                      style: appbarStyle,
                    ),
                  ),
                  BooksBox(10),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'أدب',
                      style: appbarStyle,
                    ),
                  ),
                  BooksBox(10),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'قدرات',
                      style: appbarStyle,
                    ),
                  ),
                  BooksBox(10),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'لغات',
                      style: appbarStyle,
                    ),
                  ),
                  BooksBox(10)
                ],
            ),
          ],
          ),
        ),
    ],
      )
    );
  }
}
