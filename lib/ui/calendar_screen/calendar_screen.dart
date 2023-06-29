import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      body: const Center(
        child: Text(
          "Calendar Screen",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
