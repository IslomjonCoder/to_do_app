import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/utils/colors.dart';
import 'package:to_do_app/utils/icons.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 284,
        width: 345,
        decoration: BoxDecoration(
          color: ColorsApp.secondaryBG,
          border: Border.all(
            color: ColorsApp.borderColor,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Create New Tasks",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Add sub-task",
                    style: TextStyle(color: ColorsApp.secondaryForTextAndIcon),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    IconsApp.addBig,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                  width: 110,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: ColorsApp.borderColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the value to change the border radius
                      ),
                      backgroundColor:
                          ColorsApp.mainBackground, // Change the color here
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Category",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 110,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: ColorsApp.borderColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the value to change the border radius
                      ),
                      backgroundColor:
                          ColorsApp.mainBackground, // Change the color here
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Date & Time",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 75,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: ColorsApp.borderColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the value to change the border radius
                      ),
                      backgroundColor:
                          ColorsApp.mainButtoncolor, // Change the color here
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Set",
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
