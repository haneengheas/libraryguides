import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';

class AddComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple,
          title: Center(child: Text('إضافة تعليق ', style: appbarStyle)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(

            children: [
              SizedBox(
                height: 20,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  //onChanged: () {},
                  keyboardType: TextInputType.multiline,
                  maxLines: 15,
                  maxLength: 500,

                  enableSuggestions: true,

                  decoration: InputDecoration(
                    fillColor: clear_gray,
                    isDense: false,

                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: purple, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: purple, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'اكتب تعليقك',



                    labelStyle: labelStyle,
                    hintStyle: hintStyle,
                  ),
                ),
              ),
              SizedBox(
                height: sizeFromHeight(context, 30),
              ),
              Buton('إرسال', onTap: () {
                Navigator.pop(context);
              })
            ],
          ),
        ),
      ),
    );
  }
}
