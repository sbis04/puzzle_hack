import 'dart:developer';

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.largeChild,
    this.mediumChild,
    this.smallChild,
    this.largeBreakPoint = 1200.0,
    this.mediumBreakPoint = 580.0,
  }) : super(key: key);

  final Widget largeChild;

  final Widget? mediumChild;

  final Widget? smallChild;

  final double largeBreakPoint;

  final double mediumBreakPoint;

  @override
  Widget build(BuildContext context) {
    final smallestWidth = MediaQuery.of(context).size.width;
    log('width: $smallestWidth');
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: smallestWidth >= largeBreakPoint
          ? largeChild
          : smallestWidth >= mediumBreakPoint
              ? mediumChild ?? largeChild
              : smallChild ?? mediumChild ?? largeChild,
    );
  }
}
