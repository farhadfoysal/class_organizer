import 'package:class_organizer/admin/school/schedule/single_day_schedule.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeeklySchedules extends StatefulWidget {
  @override
  _WeeklySchedulesState createState() => _WeeklySchedulesState();
}

class _WeeklySchedulesState extends State<WeeklySchedules> {
  late List<String> tabTitles;
  late List<DateTime> dateList;

  @override
  void initState() {
    super.initState();
    generateDateList();
  }

  void generateDateList() {
    DateTime now = DateTime.now();
    dateList = List.generate(7, (index) => now.add(Duration(days: index)));
    tabTitles = dateList.map((date) {
      return DateFormat('EEEE').format(date); // e.g., "Thursday, Sep 19"
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Date Tabs'),
          bottom: TabBar(
            isScrollable: true, // Scrollable for many tabs
            tabs: tabTitles.map((title) => Tab(text: title)).toList(),
          ),
        ),
        body: TabBarView(
          children: dateList.map((date) {
            return SingleDaySchedule(date: date);
          }).toList(),
        ),
      ),
    );
  }
}