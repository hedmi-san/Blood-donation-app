import 'package:flutter/material.dart';

class OmniButton extends StatelessWidget {
  const OmniButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = Colors.indigo,
    this.text,
    this.margin,
    this.padding,
    this.elevation,
    this.textStyle,
    this.cornerRadius = 15,
    this.width,
    this.height,
    this.icon,
    this.iconPosition = AxisDirection.left,
    this.gap = 10,
    this.borderColor = Colors.transparent,
    this.borderThickness = 0,
  });
  final void Function() onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final double borderThickness;
  final String? text;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? elevation;
  final TextStyle? textStyle;
  final double cornerRadius;
  final double? width;
  final double? height;
  final Widget? icon;
  final double gap;
  final AxisDirection iconPosition;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: padding,
            minimumSize: const Size(50, 20),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: BorderSide(color: borderColor, width: borderThickness),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cornerRadius),
            ),
            backgroundColor: backgroundColor,
            elevation: elevation),
        child: iconPosition == AxisDirection.left
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox(),
                  SizedBox(
                    width: icon == null || text == null ? 0 : gap,
                  ),
                  text != null
                      ? Text(
                          text!,
                          style: textStyle,
                        )
                      : const SizedBox(),
                ],
              )
            : iconPosition == AxisDirection.right
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text != null
                          ? Text(
                              text!,
                              style: textStyle,
                            )
                          : const SizedBox(),
                      SizedBox(
                        width: icon == null || text == null ? 0 : gap,
                      ),
                      icon ?? const SizedBox(),
                    ],
                  )
                : iconPosition == AxisDirection.up
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          icon ?? const SizedBox(),
                          SizedBox(
                            height: icon == null || text == null ? 0 : gap,
                          ),
                          text != null
                              ? Text(
                                  text!,
                                  style: textStyle,
                                )
                              : const SizedBox(),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          text != null
                              ? Text(
                                  text!,
                                  style: textStyle,
                                )
                              : const SizedBox(),
                          SizedBox(
                            height: icon == null || text == null ? 0 : gap,
                          ),
                          icon ?? const SizedBox(),
                        ],
                      ),
      ),
    );
  }
}
