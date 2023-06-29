import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/utils/colors.dart';

import '../../utils/icons.dart';
import '../menu_drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  child: Container()),
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            'assets/images/shit.png',
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
                            "Hello Joshitha",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Keep Plan For 1 Day",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 148,
                      ),
                      IconButton(
                        // iconSize: 28,
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          height: 28,
                          IconsApp.search,
                        ),
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
          "Home Screen",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
