import 'package:edu_app/components/cards/explore_course_card.dart';
import 'package:edu_app/model/course.dart';
import 'package:flutter/material.dart';

class ExploreCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0),
            child: ExploreCourseCard(course: exploreCourses[index]),
          );
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
      ),
    );
  }
}
