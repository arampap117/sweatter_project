import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

final class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,

    this.contentPadding,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.hideButton = false,
    this.keyboardType,
    this.inputAction,
  });

  final EdgeInsetsGeometry? contentPadding;
  final String? hintText;
  final IconData? prefixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;

  final bool hideButton;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

final class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscure;

  @override
  void initState() {
    _obscure = widget.hideButton;
    super.initState();
  }

  void hideSwitch() => setState(() => _obscure = !_obscure);

  @override
  Widget build(final BuildContext context) => TextFormField(
    textInputAction: widget.inputAction,
    keyboardType: widget.keyboardType,
    validator: widget.validator,
    onChanged: widget.onChanged,
    onFieldSubmitted: widget.onFieldSubmitted,
    obscureText: _obscure,
    decoration: InputDecoration(
      contentPadding: widget.contentPadding,
      hintText: widget.hintText,
      prefixIcon: widget.prefixIcon != null
          ? Row(
              mainAxisSize: .min,
              mainAxisAlignment: .spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const .only(left: 10),
                  child: Icon(widget.prefixIcon),
                ),
                Padding(
                  padding: const .symmetric(horizontal: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(4),
                      color: Colors.grey,
                    ),
                    width: 1.5,
                    height: 22,
                  ),
                ),
              ],
            )
          : null,
      suffixIcon: widget.hideButton
          ? Padding(
              padding: const .only(right: 10),
              child: IconButton(
                onPressed: hideSwitch,
                icon: Icon(_obscure ? LucideIcons.eye : LucideIcons.eyeOff),
              ),
            )
          : null,
    ),
  );
}
