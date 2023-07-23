import 'package:flutter/material.dart';

class OmniRadio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final double cornerRadius;
  final Color activeColor;
  final Color inactiveColor;
  final Color borderColor;
  final double borderThickness;
  final double? width;
  final double? height;
  final String? text;
  final IconData? icon;
  final double gap;
  final TextStyle? textStyle;
  final AxisDirection iconPosition;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? iconSize;
  final double? elevation;

  const OmniRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.cornerRadius = 15,
    this.text,
    this.borderColor = Colors.indigo,
    this.borderThickness = 2,
    this.activeColor = Colors.indigo,
    this.inactiveColor = Colors.white,
    this.width,
    this.height,
    this.icon,
    this.gap = 10,
    this.iconPosition = AxisDirection.left,
    this.textStyle,
    this.padding,
    this.margin,
    this.iconSize,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        elevation: elevation ?? 0.0,
        borderRadius: BorderRadius.circular(cornerRadius),
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          onTap: () {
            onChanged(value);
          },
          child: AnimatedContainer(
            width: width,
            height: 10,
            padding: padding,
            duration: const Duration(milliseconds: 250),
            decoration: BoxDecoration(
              color: groupValue == value ? activeColor : inactiveColor,
              border: Border.all(
                color: borderColor,
                width: borderThickness,
              ),
              borderRadius: BorderRadius.circular(cornerRadius),
            ),
            child: iconPosition == AxisDirection.left
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon != null
                          ? Icon(
                              icon,
                              size: iconSize,
                              color: groupValue != value
                                  ? activeColor
                                  : inactiveColor,
                            )
                          : const SizedBox(),
                      SizedBox(
                        width: icon == null || text == null ? 0 : gap,
                      ),
                      text != null
                          ? Text(
                              text!,
                              style: textStyle != null
                                  ? textStyle!.copyWith(
                                      color: groupValue != value
                                          ? activeColor
                                          : inactiveColor,
                                    )
                                  : TextStyle(
                                      fontSize: 17,
                                      color: groupValue != value
                                          ? activeColor
                                          : inactiveColor,
                                    ),
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
                                  style: textStyle != null
                                      ? textStyle!.copyWith(
                                          color: groupValue != value
                                              ? activeColor
                                              : inactiveColor,
                                        )
                                      : TextStyle(
                                          fontSize: 17,
                                          color: groupValue != value
                                              ? activeColor
                                              : inactiveColor,
                                        ),
                                )
                              : const SizedBox(),
                          SizedBox(
                            width: icon == null || text == null ? 0 : gap,
                          ),
                          icon != null
                              ? Icon(
                                  icon,
                                  size: iconSize,
                                  color: groupValue != value
                                      ? activeColor
                                      : inactiveColor,
                                )
                              : const SizedBox(),
                        ],
                      )
                    : iconPosition == AxisDirection.up
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              icon != null
                                  ? Icon(
                                      icon,
                                      size: iconSize,
                                      color: groupValue != value
                                          ? activeColor
                                          : inactiveColor,
                                    )
                                  : const SizedBox(),
                              SizedBox(
                                height: icon == null || text == null ? 0 : gap,
                              ),
                              text != null
                                  ? Text(
                                      text!,
                                      style: textStyle != null
                                          ? textStyle!.copyWith(
                                              color: groupValue != value
                                                  ? activeColor
                                                  : inactiveColor,
                                            )
                                          : TextStyle(
                                              fontSize: 17,
                                              color: groupValue != value
                                                  ? activeColor
                                                  : inactiveColor,
                                            ),
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
                                      style: textStyle != null
                                          ? textStyle!.copyWith(
                                              color: groupValue != value
                                                  ? activeColor
                                                  : inactiveColor,
                                            )
                                          : TextStyle(
                                              fontSize: 17,
                                              color: groupValue != value
                                                  ? activeColor
                                                  : inactiveColor,
                                            ),
                                    )
                                  : const SizedBox(),
                              SizedBox(
                                height: icon == null || text == null ? 0 : gap,
                              ),
                              icon != null
                                  ? Icon(
                                      icon,
                                      size: iconSize,
                                      color: groupValue != value
                                          ? activeColor
                                          : inactiveColor,
                                    )
                                  : const SizedBox(),
                            ],
                          ),
          ),
        ),
      ),
    );
  }
}
