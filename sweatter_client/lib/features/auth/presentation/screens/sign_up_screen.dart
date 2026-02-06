import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:sweatter_client/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:sweatter_client/features/auth/presentation/widgets/custom_button.dart';
import 'package:sweatter_client/features/auth/presentation/widgets/custom_text_field.dart';

/// __Экран регистраций__
final class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    body: SafeArea(
      child: Padding(
        padding: const .symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .center,
          spacing: 5,
          children: <Widget>[
            Column(
              mainAxisSize: .min,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(300, 300),
                  child: Image.asset('assets/icons/app_hi_icon2.png'),
                ),
                const Text('Регистрация'),
              ],
            ),
            const Column(
              mainAxisSize: .min,
              spacing: 5,
              children: <Widget>[
                CustomTextField(
                  hintText: 'Придумайте ник',
                  prefixIcon: LucideIcons.user,
                  keyboardType: .name,
                ),
                CustomTextField(
                  hintText: 'Введите эл. почту',
                  prefixIcon: LucideIcons.mail,
                  keyboardType: .emailAddress,
                ),

                CustomTextField(
                  hintText: 'Придумайте пароль',
                  prefixIcon: LucideIcons.keyRound,
                  keyboardType: .visiblePassword,
                  hideButton: true,
                ),
                CustomTextField(
                  hintText: 'Введите повторно пароль',
                  prefixIcon: LucideIcons.keyRound,
                  keyboardType: .visiblePassword,
                  hideButton: true,
                ),
              ],
            ),
            Column(
              // mainAxisAlignment: .spaceAround,
              mainAxisSize: .min,
              crossAxisAlignment: .stretch,
              spacing: 5,
              children: <Widget>[
                CustomButton.fill(
                  onPressed: () {},
                  height: 44,

                  child: const Text('Вход'),
                ),
                CustomButton.outline(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (final BuildContext context) =>
                          const SignInScreen(),
                    ),
                  ),
                  height: 44,
                  child: const Text('Авторизация'),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
