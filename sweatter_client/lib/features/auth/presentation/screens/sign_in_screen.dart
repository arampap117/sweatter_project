import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:sweatter_client/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:sweatter_client/features/auth/presentation/widgets/custom_button.dart';
import 'package:sweatter_client/features/auth/presentation/widgets/custom_text_field.dart';

/// __Экран авторизаций__
final class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
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
                const Text('Авторизация'),
              ],
            ),

            Column(
              spacing: 5,
              mainAxisSize: .min,
              children: <Widget>[
                const CustomTextField(
                  hintText: 'Введите ник или электронную почту',
                  prefixIcon: LucideIcons.user,
                  keyboardType: .emailAddress,
                  inputAction: .next,
                ),

                const CustomTextField(
                  hintText: 'Введите пароль',
                  prefixIcon: LucideIcons.keyRound,
                  keyboardType: .visiblePassword,
                  hideButton: true,
                ),

                TextButton(
                  onPressed: () {},
                  child: const Text('Забыли пароль?'),
                ),
              ],
            ),
            Column(
              spacing: 5,
              mainAxisSize: .max,
              crossAxisAlignment: .stretch,
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
                          const SignUpScreen(),
                    ),
                  ),
                  height: 44,
                  child: const Text('Регистрация'),
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
