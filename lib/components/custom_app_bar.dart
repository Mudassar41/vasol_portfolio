// ignore_for_file: prefer_const_constructors

import 'package:company_porfolio/components/responsive.dart';
import 'package:company_porfolio/utills/const.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isLargeScreen(context) ? 40 : 8,
            vertical: ResponsiveWidget.isLargeScreen(context) ? 40 : 8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Vision Apex Solutions',
            style: TextStyle(
                fontSize: ResponsiveWidget.isLargeScreen(context) ? 26 : 22,
                fontWeight: FontWeight.bold),
          ),
          Row(
              children: Constants.APP_LISTS.map((e) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {},
              onExit: (event) {},
              onHover: (event) {},
              child: Row(
                children: [
                  Text(e),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            );
          }).toList()),
          Text(
            'Let\'s talk',
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy),
          )
        ]),
      ),
    );
  }
}
