import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'dymanic_widget_2_controller.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class PietPainting extends StatelessWidget {
  const PietPainting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: LayoutGrid(
          columnGap: 5,
          rowGap: 5,
          areas: '''
          1 1 1 1
          1 1 1 1
          2 3 6 6
          4 5 6 6
          ''',
          // areas: '''
          // 1 1 2 2
          // 1 1 2 2
          // 3 3 4 4
          // 3 3 4 4
          // ''',
          // areas: '''
          // 1 1 2 2
          // 1 1 2 2
          // 1 1 3 3
          // 1 1 3 3
          // ''',
          // areas: '''
          // 1 1 1
          // 2 3 4
          // 2 3 4
          // 5 5 5
          // ''',
          // areas: '''
          // 1 1 1 1
          // 1 1 1 1
          // 2 2 3 3
          // 2 2 3 3
          // ''',
          // areas: '''
          // 1 1 2 2
          // 1 1 2 2
          // 3 3 3 3
          // 3 3 3 3
          // ''',

          // Note that the number of columns and rows matches the grid above (3x3)
          columnSizes: [1.fr, 1.fr, 1.fr, 1.fr], // [1.fr, 1.fr, 1.fr],
          rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
          children: [
            // Using NamedAreaGridPlacement constructor
            NamedAreaGridPlacement(
              areaName: '1',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.blueGrey,
                )),
              ),
            ),
            NamedAreaGridPlacement(
              areaName: '2',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.blueGrey,
                )),
              ),
            ),
            NamedAreaGridPlacement(
              areaName: '3',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.blueGrey,
                )),
              ),
            ),
            NamedAreaGridPlacement(
              areaName: '4',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.blueGrey,
                )),
              ),
            ),
            NamedAreaGridPlacement(
              areaName: '5',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.blueGrey,
                )),
              ),
            ),
            NamedAreaGridPlacement(
              areaName: '6',
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.blueGrey,
                )),
              ),
            ),
          ],
        ));
  }
}

class DymanicWidget2View extends GetView<DymanicWidget2Controller> {
  const DymanicWidget2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Layout Grid Desktop Example',
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      builder: (context, child) => const PietPainting(),
    );
  }
}
