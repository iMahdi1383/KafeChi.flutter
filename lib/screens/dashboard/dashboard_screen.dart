import 'package:flutter/material.dart';
import 'package:kafechi/shared/ak_widgets/ak_button.dart';
import 'package:kafechi/shared/colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text('خوش آمدید! با موفقیت وارد شدید'),
            AkButton(
              text: 'خروج',
              borderColor: ColorPalette.accent,
            )
          ],
        ),
      ),
    );
  }
}
