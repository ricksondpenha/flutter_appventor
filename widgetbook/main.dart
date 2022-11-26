import 'package:flutter/material.dart';
import 'package:flutter_appventor/config/themes.dart';
import 'package:flutter_appventor/features/auth/presentation/widgets/signin_form.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appInfo: AppInfo(name: 'Appventor'),
      lightTheme: lightTheme,
      darkTheme: darkTheme,
      categories: [
        WidgetbookCategory(name: 'Auth', widgets: [
          WidgetbookWidget(
            name: 'Sign In Page',
            useCases: [
              WidgetbookUseCase(
                name: 'sign in form',
                builder: (context) => const SignInForm(),
              ),
            ],
          )
        ]),
      ],
    );
  }
}
