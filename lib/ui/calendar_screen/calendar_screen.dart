import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  bool isArrowPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(94),
        child: Stack(
          children: [
            AppBar(
              bottomOpacity: 1,
              bottom: PreferredSize(
                preferredSize: const Size.fromRadius(
                  20,
                ),
                child: Container(),
              ),
              backgroundColor: ColorsApp.secondaryBG,
              elevation: 1.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                side: BorderSide(
                  color: ColorsApp.borderColor,
                  width: 1.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 65, left: 16, right: 5),
              height: 118,
              color: ColorsApp.secondaryBG,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorsApp.borderColor,
                          ),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isArrowPressed = !isArrowPressed;
                                });
                              },
                              icon: SvgPicture.asset(
                                !isArrowPressed
                                    ? IconsApp.arrowdown
                                    : IconsApp.arrowUp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2022",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "December",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 165,
                      ),
                      Row(
                        children: [
                          IconButton(
                            // iconSize: 28,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              height: 28,
                              IconsApp.arrowLeft,
                            ),
                          ),
                          IconButton(
                            // iconSize: 28,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              height: 28,
                              IconsApp.arrowRight,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TableCalendar(
          firstDay: DateTime.now().subtract(
            const Duration(
              days: 365,
            ),
          ),
          lastDay: DateTime.now().add(
            const Duration(
              days: 365,
            ),
          ),
          focusedDay: DateTime.now(),
          headerVisible: false,
          daysOfWeekHeight: 18,
          daysOfWeekStyle: DaysOfWeekStyle(
            dowTextFormatter: (date, locale) {
              final dayOfWeek = DateFormat.E(locale).format(date);
              return dayOfWeek.substring(0, 1).toUpperCase();
            },
            decoration: const BoxDecoration(),
            weekdayStyle: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            weekendStyle: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          weekendDays: [],
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              print("focusedDay: $focusedDay");
              print("selectedDay: $selectedDay");
            });
          },
          calendarStyle: const CalendarStyle(
            withinRangeTextStyle: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            defaultTextStyle: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            outsideTextStyle: TextStyle(
              fontSize: 19,
              color: ColorsApp.calendarOutsideColor,
            ),
            todayDecoration: BoxDecoration(
              color: ColorsApp
                  .mainButtoncolor, // Change the color of the selected date here
              shape: BoxShape
                  .rectangle, // Set the shape to BoxShape.rectangle for a square shape
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
            selectedDecoration: BoxDecoration(
              color: ColorsApp
                  .mainButtoncolor, // Change the color of the selected date here
              shape: BoxShape
                  .rectangle, // Set the shape to BoxShape.rectangle for a square shape
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
