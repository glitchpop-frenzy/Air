import 'package:air/application/auth/auth_bloc.dart';
import 'package:air/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../themes/theme.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  late final AuthBloc authBloc;
  @override
  void initState() {
    authBloc = getIt.get<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: getIt.get<AuthBloc>(),
      builder: (_, state) => ElevatedButton.icon(
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(const Size(300, 65)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: MaterialStateProperty.all(AppColors.primaryWhite),
        ),
        onPressed: () {
          authBloc.add(const AuthEvent.authenticate());
        },
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
      ),
    );
  }
}
