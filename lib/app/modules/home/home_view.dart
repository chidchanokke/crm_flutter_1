import 'package:crm_flutter_1/app/modules/home/enum/global_enums.dart';
import 'package:crm_flutter_1/app/modules/home/widget/staggered_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> layouts = [
      "Staggered",
      "Masonry",
      "Quilted",
      "Woven",
      "Staired",
      "Aligned"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Grid View"),
      ),
      body: ListView.builder(
        itemCount: layouts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StaggeredScreen(
                        selectedGrid: GridType.values[index],
                        title: layouts[index]),
                  )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: Text(
                    layouts[index],
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
