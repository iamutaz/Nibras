import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/data/cubit/login_state.dart';
import 'package:nibras/core/networking/api_error_handler.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loginloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          loginsuccess: (data) async {
            context.pop();
            context.pushNamed(RoutesName.navigatorhome);

          },
          loginfailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginFailure,
      child: SizedBox.shrink(),
    );
  }
}
