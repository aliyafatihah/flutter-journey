// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dunkinapp/pages/modifier_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ModifierScreen(),
          )),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2, child: Image(image: Svg(imageName), height: 200)),
                Expanded(
                  flex: 1,
                  child: AutoSizeText(
                    donutFlavor,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    maxLines: 2, // Limit the text to 2 lines
                    minFontSize: 10.0, // Minimum font size
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: AutoSizeText(
                    donutPrice,
                    style: TextStyle(fontSize: 20),
                    maxLines: 1, // Limit the text to 2 lines
                    minFontSize: 10.0, // Minimum font size
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
