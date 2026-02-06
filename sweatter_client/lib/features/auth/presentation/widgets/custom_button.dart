import 'package:flutter/material.dart';

final class CustomButton extends StatelessWidget {
  const CustomButton.fill({
    super.key,
    this.onPressed,
    required this.child,
    this.height,
    this.width,
  }) : _isFillOrOutline = true;
  const CustomButton.outline({
    super.key,
    this.onPressed,
    required this.child,
    this.height,
    this.width,
  }) : _isFillOrOutline = false;

  // final ButtonType buttonType;
  final void Function()? onPressed;
  final bool _isFillOrOutline;
  final Widget child;
  final double? height;
  final double? width;

  @override
  Widget build(final BuildContext context) => SizedBox(
    height: height,
    width: width,
    child: _isFillOrOutline
        ? FilledButton(onPressed: onPressed, child: child)
        : OutlinedButton(onPressed: onPressed, child: child),
  );
}
