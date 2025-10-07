import 'package:flutter/material.dart';
import 'package:torch_mobile/core/components/app_text.dart';
import 'package:torch_mobile/core/components/app_text_field.dart';
import 'package:torch_mobile/core/functions/global_function.dart';
import 'package:torch_mobile/core/themes/colors_scheme.dart';

class AppLogin extends StatefulWidget {
  const AppLogin({super.key});

  @override
  State<AppLogin> createState() => _AppLoginState();
}

class _AppLoginState extends State<AppLogin> {
  Widget uiButtonAnotherSignIn({
    required String text,
    required String image,
  }) {
    final colors = Theme.of(context).extension<ColorsScheme>()!;
    return InkWell(
      child: Container(
        height: 50,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: colors.black.withAlpha(60),
              offset: Offset(0, 3),
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, fit: BoxFit.contain),
            SizedBox(width: 12),
            AppText(text: text, size: FontSize.medium, color: colors.text),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsScheme>()!;
    const logoImage = 'assets/logos/TorchMobile_Logo_White_256x256.png';
    return Scaffold(
      backgroundColor: colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: 1),
                duration: Duration(seconds: 1),
                curve: Curves.bounceOut,
                builder: (context, value,child) {
                  return Transform.scale(
                    scale: value,
                    child: Container(
                      width: 200,
                      height: 200,
                      padding: EdgeInsets.all(16),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [colors.primary, colors.secondary],
                        ),
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Image.asset(logoImage, fit: BoxFit.contain),
                    ),
                  );
                }
              ),
              SizedBox(height: 24),
              AppTextField(label: translate(context).auth_username),
              SizedBox(height: 12),
              AppTextField(
                label: translate(context).auth_password,
                isSecureText: true,
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: AppText(
                      text: '${translate(context).auth_forgot_password} ?',
                      size: FontSize.medium,
                      color: colors.gray700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              InkWell(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: AppText(
                    text: translate(context).auth_signin,
                    color: colors.white,
                    size: FontSize.medium,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: Divider(color: colors.gray300)),
                  SizedBox(width: 8),
                  AppText(
                    text: 'or',
                    size: FontSize.medium,
                    color: colors.gray300,
                  ),
                  SizedBox(width: 8),
                  Expanded(child: Divider(color: colors.gray300)),
                ],
              ),
              SizedBox(height: 12),
              uiButtonAnotherSignIn(
                text: 'Sign In with Google',
                image: 'assets/images/google.png',
              ),
              SizedBox(height: 12),
              uiButtonAnotherSignIn(
                text: 'Sign In with Facebook',
                image: 'assets/images/facebook.png',
              ),
              SizedBox(height: 12),
              uiButtonAnotherSignIn(
                text: 'Sign In with Apple',
                image: 'assets/images/apple.png',
              ),
              Spacer(),
              AppText(
                text: '© 2025 Copyright By Suppanat',
                size: FontSize.small,
                color: colors.gray500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
