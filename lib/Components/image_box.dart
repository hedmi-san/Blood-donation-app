import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    required this.image,
    this.margin,
    this.padding,
    this.cornerRadius = 15,
    this.backgroundColor = Colors.indigo,
    this.width,
    this.height,
    this.elevation,
    super.key,
  });
  final Image image;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double cornerRadius;
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
        clipBehavior: Clip.antiAlias,
        child: Container(
          color: backgroundColor,
          width: width,
          height: height,
          padding: padding,
          child: image,
        ),
      ),
    );
  }
}
