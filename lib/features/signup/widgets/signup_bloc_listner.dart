import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/data/cubit/login_state.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/signup/data/cubit/signup_cubit.dart';
import 'package:nibras/features/signup/data/cubit/signup_state.dart';

class SignupBlocListner extends StatelessWidget {
  const SignupBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(
          signuploading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          signupsuccess: (data) async {
            context.pop();

            context.pushNamed(RoutesName.login);
          },
          signupfailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupFailure,
      child: SizedBox.shrink(),
    );
  }
}
