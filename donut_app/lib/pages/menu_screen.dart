// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dunkinapp/components/donut_tile.dart';
import 'package:dunkinapp/pages/donut_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dunkinapp/pages/modifier_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colorFromHex("F8F4F1"),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/images/advertisement/dunkin-logo-transparent.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Svg("lib/images/advertisement/advertisement1.svg"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
              ),
            ),
          ],
        ),
        toolbarHeight: 150,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 35),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
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
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ListTile(
                                          leading: Image(
                                            image: Svg(
                                              'lib/images/sidebar/donut-home.svg',
                                            ),
                                            height: 50,
                                          ),
                                          title: AutoSizeText('Home',
                                              style: TextStyle(fontSize: 24),
                                              maxLines:
                                                  1, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ListTile(
                                          leading: Image(
                                            image: Svg(
                                                'lib/images/sidebar/vouchers.svg'),
                                            height: 50,
                                          ),
                                          title: AutoSizeText('Vouchers',
                                              style: TextStyle(fontSize: 24),
                                              maxLines:
                                                  1, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
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
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: Material(
                                          type: MaterialType.transparency,
                                          child: ListTile(
                                            shape: Border(
                                                left: BorderSide(
                                                    width: 10,
                                                    color: Colors.orange)),
                                            onTap: () => {},
                                            selected: true,
                                            selectedTileColor:
                                                _colorFromHex("F8F4F1"),
                                            selectedColor: Colors.orange,
                                            leading: Image(
                                              image: Svg(
                                                'lib/images/sidebar/limited_time_offering.svg',
                                              ),
                                              height: 50,
                                            ),
                                            title: AutoSizeText(
                                                'Limited Time Offering',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                                maxLines:
                                                    2, // Limit the text to 2 lines
                                                minFontSize:
                                                    12.0, // Minimum font size
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ListTile(
                                          leading: Image(
                                            image: Svg(
                                              'lib/images/sidebar/breakfast-savers.svg',
                                            ),
                                            height: 50,
                                          ),
                                          title: AutoSizeText(
                                              'Breakfast Savers',
                                              style: TextStyle(fontSize: 24),
                                              maxLines:
                                                  2, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ListTile(
                                          leading: Image(
                                            image: Svg(
                                              'lib/images/sidebar/donuts.svg',
                                            ),
                                            height: 50,
                                          ),
                                          title: AutoSizeText('Donuts',
                                              style: TextStyle(fontSize: 24),
                                              maxLines:
                                                  1, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ListTile(
                                          leading: Image(
                                            image: Svg(
                                              'lib/images/sidebar/special-donuts.svg',
                                            ),
                                            height: 50,
                                          ),
                                          title: AutoSizeText('Special Donuts',
                                              style: TextStyle(fontSize: 24),
                                              maxLines:
                                                  2, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ListTile(
                                          leading: Image(
                                            image: Svg(
                                              'lib/images/sidebar/sandwiches-and-combos.svg',
                                            ),
                                            height: 50,
                                          ),
                                          title: AutoSizeText(
                                              'Sandwiches and Combos',
                                              style: TextStyle(fontSize: 24),
                                              maxLines:
                                                  2, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ListTile(
                                          leading: Image(
                                            image: Svg(
                                              'lib/images/sidebar/beverages.svg',
                                            ),
                                            height: 50,
                                          ),
                                          title: AutoSizeText('Beverages',
                                              style: TextStyle(fontSize: 24),
                                              maxLines:
                                                  1, // Limit the text to 2 lines
                                              minFontSize:
                                                  12.0, // Minimum font size
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: AutoSizeText(
                                'Limited Time Offering',
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 2, // Limit the text to 2 lines
                                minFontSize: 16.0, // Minimum font size
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 25, right: 50, left: 15),
                                child: Container(
                                    width: 100,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.orange, width: 8),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4)))),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: AutoSizeText(
                                'Indulge in our exclusive creations with the Limited Time Offering! Discover unique and seasonal flavors that push the boundaries of traditional donuts.',
                                style: TextStyle(fontSize: 24),
                                maxLines: 4, // Limit the text to 2 lines
                                minFontSize: 14.0, // Minimum font size
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DonutSection()
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
                            onTap: () => {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _colorFromHex("E5E5E5"),
                                  borderRadius: BorderRadius.circular(8)),
                              padding: EdgeInsets.all(25),
                              child: Center(
                                child: AutoSizeText('View Order',
                                    style: TextStyle(
                                      color: _colorFromHex("#676767"),
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
