import 'package:air/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentGrey1,
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              const Center(
                child: Text(
                  'Air',
                  style: AppStyles.headText1,
                ),
              ),
              const Center(
                child: Text(
                  'Just better',
                  style: AppStyles.subheadText1,
                ),
              ),
              const SizedBox(height: 75),
              ElevatedButton.icon(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(300, 65)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primaryWhite),
                ),
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.twitter,
                  color: AppColors.accentGrey1,
                ),
                label: const Text(
                  'Login with Twitter',
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.accentGrey1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
