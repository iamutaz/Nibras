
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/helpers/shared_pref_helper.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/core/routing/routes_name.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/login/data/cubit/login_state.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_cubit.dart';
import 'package:nibras/features/setting/data/cubits/logoutcubit/logout_state.dart';

class LogoutBlocListener extends StatelessWidget {
  const LogoutBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutCubit, LogoutState>(
      listener: (context, state) {
        state.whenOrNull(
          logoutloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          logoutuccess: (data) {
            context.pop();
            context.pushNamed(RoutesName.onboarding);
          },
          logoutfailure: (error) {

            setupErrorState(context, error);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is LogoutLoading ||
          current is LogoutSuccess ||
          current is LogoutFailure,
      child: SizedBox.shrink(),
    );
  }
}

