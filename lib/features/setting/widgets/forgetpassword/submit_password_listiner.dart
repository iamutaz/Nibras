import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_state.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';

class SubmitPasswordListiner extends StatelessWidget {
  final String email;

  const SubmitPasswordListiner({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          submitpasswordloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          submitpasswordsuccess: (data) async {
            context.pop();

            context.pushNamed(RoutesName.login,);
          },
          submitpasswordfailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is SubmitPasswordLoading ||
          current is SubmitPasswordFailure ||
          current is SubmitPasswordSuccess,
      child: SizedBox.shrink(),
    );
  }
}
