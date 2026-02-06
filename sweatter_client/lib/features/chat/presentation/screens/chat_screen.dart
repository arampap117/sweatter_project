import 'package:flutter/material.dart';
import 'package:sweatter_client/features/chat/presentation/widgets/chat_text_field.dart';

final class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(final BuildContext context) => const Scaffold(
    body: SafeArea(
      child: Column(
        mainAxisAlignment: .spaceBetween,
        mainAxisSize: .min,
        crossAxisAlignment: .stretch,
        children: <Widget>[SizedBox(), ChatTextField()],
      ),
    ),
  );
}
