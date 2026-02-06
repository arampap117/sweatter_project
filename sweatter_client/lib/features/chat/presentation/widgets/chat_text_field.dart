import 'package:flutter/material.dart';

final class ChatTextField extends StatefulWidget {
  const ChatTextField({
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
  State<ChatTextField> createState() => _CustomTextFieldState();
}

final class _CustomTextFieldState extends State<ChatTextField> {
  @override
  Widget build(final BuildContext context) => Row(
    spacing: 10,
    children: <Widget>[
      TextFormField(
        textInputAction: widget.inputAction,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          hintText: widget.hintText,
        ),
      ),
      OutlinedButton(
        onPressed: () {},
        child: const Icon(Icons.grid_off_outlined),
      ),
    ],
  );
}
