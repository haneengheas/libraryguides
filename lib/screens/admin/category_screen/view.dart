import 'package:flutter/material.dart';
import 'package:libraryguides/constant/styles.dart';
import 'package:libraryguides/screens/admin/add_book_screen/add_book_screen.dart';
import 'package:libraryguides/screens/admin/book_list_screen/view.dart';
import 'package:libraryguides/screens/admin/category_screen/category_item.dart';
import 'package:libraryguides/screens/admin/category_screen/custom_appBar.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appBar(),
          SizedBox(
            height: sizeFromHeight(context, 5),
          ),
          CategoryItem(
            text: 'الكتب',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DisplayBooksScreen()));
            },
          ),
          CategoryItem(
            text: 'اضافة كتاب',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddBookScreen()));
            },
          ),
          CategoryItem(
            text: 'تسجيل خروج',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
