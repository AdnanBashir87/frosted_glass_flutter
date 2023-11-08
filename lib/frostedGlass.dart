import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frosted_glass/mirrorBox.dart';

class FrostedGlass extends StatefulWidget {
  const FrostedGlass({super.key});

  @override
  State<FrostedGlass> createState() => _FrostedGlassState();
}

class _FrostedGlassState extends State<FrostedGlass> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: MirrorBox(
            theWidth: width * 0.8,
            theheight: height * 0.3,
            theChild: Column(
              children: [
                SizedBox(height: height * 0.03),
                Container(
                  width: width,
                  height: height * 0.05,
                  color: Colors.white.withOpacity(0.6),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  children: [
                    SizedBox(width: width * 0.07),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '1234 4321 1234 5634',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Row(
                  children: [
                    SizedBox(width: width * 0.07),
                    const Column(
                      children: [
                        Text(
                          'VALID',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.02),
                    const Text(
                      '04/22',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: width * 0.05),
                    const Column(
                      children: [
                        Text(
                          'VALID',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'THRU',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.02),
                    const Text(
                      '04/27',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: width * 0.05),
                    const Text(
                      'CVN : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: width * 0.02),
                    const Text(
                      '789',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Adnan  Bashir',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'lib/images/mastercard.png',
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
