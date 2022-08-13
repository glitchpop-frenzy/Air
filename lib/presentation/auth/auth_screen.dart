import 'package:air/themes/theme.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.accentGrey1,
      body: Center(
        child: Text(
          'Air',
          style: AppStyles.headText1,
        ),
      ),
    );
  }
}
