import 'package:edu_app/components/sidebar_row.dart';
import 'package:flutter/material.dart';
import 'package:edu_app/constants.dart';
import 'package:edu_app/model/sidebar.dart';

class SideBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(34.0)),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      child: Column(
        children: [
          SafeArea(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Reyhan Naufal Rahmman",
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "Lisensi Berakhir pada 21 Juni 2001",
                      style: kSearchPlaceholderStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          SideBarRow(
            item: sidebarItem[0],
          ),
          SizedBox(
            height: 32.0,
          ),
          SideBarRow(
            item: sidebarItem[1],
          ),
          SizedBox(
            height: 32.0,
          ),
          SideBarRow(
            item: sidebarItem[2],
          ),
          SizedBox(
            height: 32.0,
          ),
          SideBarRow(
            item: sidebarItem[3],
          ),
          SizedBox(
            height: 32.0,
          ),
          Spacer(),
          Row(
            children: [
              Image.asset(
                'asset/icons/icon-logout.png',
                width: 17.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                'Log Out',
                style: kSecondaryCalloutLabelStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
