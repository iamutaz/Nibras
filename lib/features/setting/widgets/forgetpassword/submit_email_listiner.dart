import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/features/login/data/cubit/login_cubit.dart';
import 'package:nibras/features/login/data/cubit/login_state.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_state.dart';
import 'package:nibras/features/setting/data/cubits/forgetpasswordcubit/forget_password_cubit.dart';

class SubmitEmailListiner extends StatelessWidget {
  const SubmitEmailListiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          submitemailloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          submitemailuccess: (data) async {
            context.pop();

            context.pushNamed(RoutesName.insertcode,aurgment: context.read<ForgetPasswordCubit>().emailcontroller.text);
          },
          submitemailfailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is SubmitEmailLoading ||
          current is SubmitEmailFailure ||
          current is SubmitEmailSuccess,
      child: SizedBox.shrink(),
    );
  }
}
