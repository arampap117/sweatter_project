import 'package:flutter/material.dart';
import 'package:sweatter_client/core/application/theme/app_theme_data.dart';
import 'package:sweatter_client/features/chat/presentation/screens/chat_screen.dart';

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
    theme: theme,
    home: const ChatScreen(),
  );
}
