import 'package:air/application/auth/auth_bloc.dart';
import 'package:air/presentation/auth/widgets/login_button.dart';
import 'package:air/themes/theme.dart';
import 'package:air/config/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<AuthBloc>(),
      child: Scaffold(
        backgroundColor: AppColors.accentGrey1,
        body: SafeArea(
          child: ScrollConfiguration(
            behavior: const ScrollBehavior(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 70),
                Center(
                  child: Text(
                    'Air',
                    style: AppStyles.headText1,
                  ),
                ),
                Center(
                  child: Text(
                    'Just better',
                    style: AppStyles.subheadText1,
                  ),
                ),
                SizedBox(height: 75),
                LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
