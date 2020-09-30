import 'package:edu_app/constants.dart';
import 'package:edu_app/model/sidebar.dart';
import 'package:flutter/material.dart';

class SideBarRow extends StatelessWidget {
  SideBarRow({@required this.item});

  final SidebarItem item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42.0,
          height: 42.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              gradient: item.background),
          child: item.icon,
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          child: Text(item.title, style: kCalloutLabelStyle),
        ),
      ],
    );
  }
}
