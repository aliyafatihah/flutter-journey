// ignore_for_file: prefer__literals_to_create_immutables, prefer__ructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dunkinapp/pages/donut_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class ModifierScreen extends StatefulWidget {
  ModifierScreen({Key? key}) : super(key: key);

  @override
  State<ModifierScreen> createState() => _ModifierScreenState();
}

class _ModifierScreenState extends State<ModifierScreen> {
  int _index = 0;

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Choco Tree", "lib/images/donuts/choco-tree.svg"],
    ["Snowman", "lib/images/donuts/snowman.svg"],
    ["Red Velvet Choco Cake", "lib/images/donuts/red-velvet-choco-cake.svg"],
    ["Lollipop", "lib/images/donuts/lolipop.svg"],
    ["Vanilla Frosted", "lib/images/donuts/vanilla-frosted.svg"],
    ["Belgian Biscoff", "lib/images/donuts/belgian-biscof.svg"],
    ["Sugar Raised", "lib/images/donuts/sugar-raised.svg"],
    ["Glazed", "lib/images/donuts/glazed.svg"],
    ["Cinnamon", "lib/images/donuts/cinnamon.svg"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colorFromHex("F8F4F1"),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image(
                  image: Svg(
                    'lib/images/donuts/XMAS-COMBO-A.svg',
                  ),
                  height: 120),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText("XMAS A 6D1C",
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 2, // Limit the text to 2 lines
                        minFontSize: 12.0, // Minimum font size
                        overflow: TextOverflow.ellipsis),
                    AutoSizeText("RM 27.50",
                        maxLines: 1, // Limit the text to 2 lines
                        minFontSize: 12.0, // Minimum font size
                        overflow: TextOverflow.ellipsis)
                  ],
                ),
              ),
            )
          ],
        ),
        toolbarHeight: 150,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 35),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 5),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 5,
                                      )),
                                  child: Center(
                                      child: AutoSizeText("1",
                                          maxLines:
                                              1, // Limit the text to 2 lines
                                          minFontSize:
                                              12.0, // Minimum font size
                                          overflow: TextOverflow.ellipsis)),
                                ),
                                AutoSizeText("Donut",
                                    maxLines: 1, // Limit the text to 2 lines
                                    minFontSize: 12.0, // Minimum font size
                                    overflow: TextOverflow.ellipsis),
                                Container(
                                  height: 100,
                                  margin: EdgeInsets.only(left: 30),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                    color: _colorFromHex("E5E5E5"),
                                    width: 5,
                                  ))),
                                  child: Text(''),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 5),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: _colorFromHex("E5E5E5"),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _colorFromHex("E5E5E5"),
                                        width: 5,
                                      )),
                                  child: Center(
                                      child: AutoSizeText("2",
                                          maxLines:
                                              1, // Limit the text to 2 lines
                                          minFontSize:
                                              12.0, // Minimum font size
                                          overflow: TextOverflow.ellipsis)),
                                ),
                                AutoSizeText("Coffee",
                                    style: TextStyle(
                                      color: _colorFromHex("#676767"),
                                    ),
                                    maxLines: 1, // Limit the text to 2 lines
                                    minFontSize: 12.0, // Minimum font size
                                    overflow: TextOverflow.ellipsis),
                                Container(
                                  height: 100,
                                  margin: EdgeInsets.only(left: 30),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                    color: _colorFromHex("E5E5E5"),
                                    width: 5,
                                  ))),
                                  child: Text(''),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 5),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: _colorFromHex("E5E5E5"),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: _colorFromHex("E5E5E5"),
                                        width: 5,
                                      )),
                                  child: Center(
                                      child: AutoSizeText("3",
                                          maxLines:
                                              1, // Limit the text to 2 lines
                                          minFontSize:
                                              12.0, // Minimum font size
                                          overflow: TextOverflow.ellipsis)),
                                ),
                                AutoSizeText("Review",
                                    style: TextStyle(
                                      color: _colorFromHex("#676767"),
                                    ),
                                    maxLines: 1, // Limit the text to 2 lines
                                    minFontSize: 12.0, // Minimum font size
                                    overflow: TextOverflow.ellipsis),
                              ],
                            )),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: AutoSizeText('Choice of Assorted Donuts',
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  maxLines: 2, // Limit the text to 2 lines
                                  minFontSize: 12.0, // Minimum font size
                                  overflow: TextOverflow.ellipsis),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: AutoSizeText('Select up to 6 item(s)',
                                  style: TextStyle(fontSize: 24),
                                  maxLines: 2, // Limit the text to 2 lines
                                  minFontSize: 12.0, // Minimum font size
                                  overflow: TextOverflow.ellipsis),
                            ),
                            GridView.builder(
                              itemCount: donutsOnSale.length,
                              padding: EdgeInsets.all(12),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.15),
                                          blurRadius: 6.0,
                                          offset: Offset(
                                            0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Image(
                                                  image: Svg(
                                                      donutsOnSale[index][1]),
                                                  height: 200)),
                                          Expanded(
                                            flex: 1,
                                            child: AutoSizeText(
                                              donutsOnSale[index][0],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                              maxLines:
                                                  2, // Limit the text to 2 lines
                                              minFontSize:
                                                  10.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Image(
                                image: Svg(
                                  'lib/images/dine-in-cart.svg',
                                ),
                                height: 100),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                AutoSizeText("RM 0.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 48),
                                    maxLines: 1, // Limit the text to 2 lines
                                    minFontSize: 12.0, // Minimum font size
                                    overflow: TextOverflow.ellipsis),
                                AutoSizeText("Subtotal",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 24),
                                    maxLines: 1, // Limit the text to 2 lines
                                    minFontSize: 12.0, // Minimum font size
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => {Navigator.pop(context)},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: _colorFromHex("#E0E0E0"),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(8)),
                              padding: EdgeInsets.all(25),
                              child: Center(
                                child: AutoSizeText('Back to Menu',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    maxLines: 2, // Limit the text to 2 lines
                                    minFontSize: 12.0, // Minimum font size
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () => {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: _colorFromHex("#E0E0E0"),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: EdgeInsets.all(25),
                                      child: Center(
                                          child: AutoSizeText('Start Over',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              maxLines:
                                                  2, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis)),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () => {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: _colorFromHex("#E0E0E0"),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      padding: EdgeInsets.all(25),
                                      child: Center(
                                          child: AutoSizeText('Change Language',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              maxLines:
                                                  2, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
