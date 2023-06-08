import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'test_controller.dart';
import 'package:collection/collection.dart';

class TestView extends GetView<TestController> {
  const TestView({Key? key}) : super(key: key);

  static const tiles = [
    GridTile(2, 2),
    GridTile(2, 1),
    GridTile(1, 2),
    GridTile(1, 1),
    GridTile(2, 2),
    GridTile(1, 2),
    GridTile(1, 1),
    GridTile(3, 1),
    GridTile(1, 1),
    GridTile(4, 1),
  ];
  // static const tiles = [
  //   GridTile(4, 1),
  //   GridTile(1, 1),
  //   GridTile(1, 1),
  //   GridTile(2, 2),
  //   GridTile(1, 1),
  //   GridTile(1, 1),
  // ];
  // static const tiles = [
  //   GridTile(2, 1),
  //   GridTile(2, 1),
  //   GridTile(2, 1),
  //   GridTile(2, 1),
  // ];
  // static const tiles = [
  //   GridTile(2, 2),
  //   GridTile(2, 1),
  //   GridTile(2, 1),
  // ];
  // static const tiles = [
  //   GridTile(4, 1),
  //   GridTile(1, 1),
  //   GridTile(1, 1),
  //   GridTile(1, 1),
  //   GridTile(4, 1),
  // ];
  // static const tiles = [
  //   GridTile(4, 1),
  //   GridTile(2, 1),
  //   GridTile(2, 1),
  // ];
  // static const tiles = [
  //   GridTile(2, 1),
  //   GridTile(2, 1),
  //   GridTile(4, 1),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                ...tiles.mapIndexed((index, tile) {
                  return StaggeredGridTile.count(
                    crossAxisCellCount: tile.crossAxisCount,
                    mainAxisCellCount: tile.mainAxisCount,
                    child: SizedBox(
                      width: tile.crossAxisCount * 100,
                      height: tile.mainAxisCount * 100,
                      child: Container(
                        color: Colors.black,
                        child: Center(
                          child: Text(index.toString(),
                              style: const TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GridTile {
  const GridTile(this.crossAxisCount, this.mainAxisCount);
  final int crossAxisCount;
  final int mainAxisCount;
}
