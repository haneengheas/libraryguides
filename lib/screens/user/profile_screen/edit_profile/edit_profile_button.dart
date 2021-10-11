import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';

class EditButton extends StatelessWidget {
  final String text;
  final Function onTap;

  EditButton(this.text, {required this.onTap, });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onTap(),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,
          ),
          height: sizeFromHeight(context, 13),
          width: sizeFromWidth(context, 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: white2,

          ),
          child: Text(
            text,
            style: buttonTextStyle
          ),

        ));
  }
}
