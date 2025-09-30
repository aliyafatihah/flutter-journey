// ignore_for_file: prefer_const_constructors

import 'package:dunkinapp/components/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutSection extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Choco Tree", "RM 3.68", "lib/images/donuts/choco-tree.svg"],
    ["Snowman", "RM 3.68", "lib/images/donuts/snowman.svg"],
    [
      "Red Velvet Choco Cake",
      "RM 3.68",
      "lib/images/donuts/red-velvet-choco-cake.svg"
    ],
    ["Lollipop", "RM 3.68", "lib/images/donuts/lolipop.svg"],
    ["Vanilla Frosted", "RM 3.68", "lib/images/donuts/vanilla-frosted.svg"],
    ["Belgian Biscoff", "RM 3.68", "lib/images/donuts/belgian-biscof.svg"],
    ["XMAS A 6D1C", "RM 27.50", "lib/images/donuts/XMAS-COMBO-A.svg"],
    ["XMAS B 9D2C", "RM 43.20", "lib/images/donuts/XMAS-COMBO-B.svg"],
    ["XMAS C 12D2C", "RM 52.80", "lib/images/donuts/XMAS-COMBO-C.svg"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          imageName: donutsOnSale[index][2],
        );
      },
    );
  }
}
