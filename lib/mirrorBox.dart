import 'package:flutter/material.dart';
import 'dart:ui';

class MirrorBox extends StatelessWidget {
  final theWidth;
  final theheight;
  final theChild;
  const MirrorBox({super.key, this.theWidth, this.theheight, this.theChild});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
            width: width*0.8,
            height: height*0.3,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white.withOpacity(0.13)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white.withOpacity(0.15),
                      Colors.white.withOpacity(0.05),
                    ]),
              ),
            ),
            Center(
              child: theChild,
            ),
          ],
        ),
      ),
    );
  }
}
