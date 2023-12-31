import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/ui/calendar_screen/calendar_screen.dart';
import 'package:to_do_app/ui/create_task/create_task.dart';
import 'package:to_do_app/ui/home/home.dart';
import 'package:to_do_app/ui/profile_screen/profile_screen.dart';
import 'package:to_do_app/utils/colors.dart';
import 'package:to_do_app/utils/icons.dart';

import '../menu_drawer/drawer.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool taskPagePressed = false;
  int pageIndex = 1;
  List<Widget> _screens = [];
  // bool isMenuButtonPressed = false;
  @override
  void initState() {
    _screens = [
      const DrawerMenuScreen(),
      const HomeScreen(),
      const CalendarScreen(),
      const ProfileScreen(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: 380,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FloatingActionButton(
            backgroundColor: ColorsApp.mainButtoncolor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            onPressed: () {
              setState(
                () {
                  taskPagePressed = !taskPagePressed;
                  print(taskPagePressed);
                },
              );
            },
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    height: 24,
                    IconsApp.addBig,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Create New Task",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          _screens[pageIndex],
          Visibility(
            visible: taskPagePressed,
            child: AddTaskPage(),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              20,
            ),
            topRight: Radius.circular(
              20,
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorsApp.secondaryBG,
            onTap: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            items: [
              _getBottomNavBarItem(
                icon: IconsApp.bottomMenu,
                activeIcon: IconsApp.bottomMenu,
                label: "Menu",
                // index: pageIndex,
              ),
              _getBottomNavBarItem(
                icon: IconsApp.bottomTasks,
                activeIcon: IconsApp.bottomTasks,
                label: "Tasks",
                // index: pageIndex,
              ),
              _getBottomNavBarItem(
                icon: IconsApp.bottomCalendar,
                activeIcon: IconsApp.bottomCalendar,
                label: "Calendar",
                // index: pageIndex,
              ),
              _getBottomNavBarItem(
                icon: IconsApp.bottomProfile,
                activeIcon: IconsApp.bottomProfile,
                label: "Mine",
                // index: pageIndex,
              ),
            ],
            currentIndex: pageIndex,

            iconSize: 28,
            selectedItemColor: Colors.white,
            unselectedItemColor: ColorsApp.mainIconColor,
            // selectedLabelStyle: const TextStyle(color: Colors.white),
            // unselectedLabelStyle: const TextStyle(color: ColorsApp.mainIconColor),
          ),
        ),
      ),
    );
  }
}

_getBottomNavBarItem({
  required String icon,
  required String activeIcon,
  required String label,
  int index = 1,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(icon,
        colorFilter: index == 1
            ? const ColorFilter.mode(ColorsApp.mainIconColor, BlendMode.srcIn)
            : null),
    activeIcon:
        // Container(

        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: ColorsApp.borderColor,
        //   ),
        //   borderRadius: BorderRadius.circular(
        //     10,
        //   ),
        // ),
        // child:

        SvgPicture.asset(activeIcon,
            colorFilter: index == 1
                ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                : null),
    // ),

    label: label,
  );
}
