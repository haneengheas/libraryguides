import 'package:flutter/material.dart';
import 'package:library_guide/screens/user/search_screen/input_search.dart';

class SearchScreen extends StatefulWidget {
   final TextEditingController searchController = TextEditingController();

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InputSearch(hint: 'الفئة التي تريد البحث عنها', controller: widget.searchController)
      ],
    );
  }
}
