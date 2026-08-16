import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/report/data/cubit/reports_cubit.dart';
import 'package:nibras/features/report/data/cubit/reports_state.dart';

class ReportsBlocListener extends StatelessWidget {
  const ReportsBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReportsCubit, ReportsState>(
      listener: (context, state) {
        state.whenOrNull(
          reportsloading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },

          reportssuccess: (data) {
            // إغلاق loading dialog
            if (Navigator.canPop(context)) {
              context.pop();
            }

             ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(data.message),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },

          reportsfailure: (error) {
 
            setupErrorState(context, error);
          },
        );
      },

      listenWhen: (previous, current) =>
          current is ReportsLoading ||
          current is ReportsSuccess ||
          current is ReportsFailure,

      child: const SizedBox.shrink(),
    );
  }
}
