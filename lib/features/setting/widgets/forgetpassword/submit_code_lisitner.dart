import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_state.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';

class SubmitCodeLisitner extends StatelessWidget {
  final String email;

  const SubmitCodeLisitner({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          submitcodeloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          submitcodeuccess: (data) async {
            context.pop();

            context.pushNamed(
              RoutesName.securityandpassword,
              aurgment: {
                'email': email,
                'code': context.read<ForgetPasswordCubit>().codecontroller.text,
              },
            );
          },
          submitcodefailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is SubmitCodeLoading ||
          current is SubmitCodeFailure ||
          current is SubmitCodeSuccess,
      child: SizedBox.shrink(),
    );
  }
}
