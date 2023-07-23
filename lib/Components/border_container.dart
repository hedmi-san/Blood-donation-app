import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({
    required this.child,
    this.margin,
    this.padding,
    this.cornerRadius = 15,
    this.borderThickness = 0,
    this.borderColor = Colors.transparent,
    this.backgroundColor = Colors.indigo,
    this.width,
    this.height,
    this.elevation,
    super.key,
  });
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double cornerRadius;
  final double borderThickness;
  final Color borderColor;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        elevation: elevation ?? 0,
        borderRadius: BorderRadius.circular(cornerRadius),
        child: Container(
            width: width,
            height: height,
            padding: padding,
            decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: borderThickness),
              borderRadius: BorderRadius.circular(cornerRadius),
              color: backgroundColor,
            ),
            child: child),
      ),
    );
  }
}
