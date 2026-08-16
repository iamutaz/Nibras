import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/features/report/data/cubit/reports_state.dart';
import 'package:nibras/features/report/data/model/report_request_body.dart';
import 'package:nibras/features/report/data/repo/reports_repo.dart';

class ReportsCubit extends Cubit<ReportsState> {
  ReportsRepo repo;
  ReportsCubit(this.repo) : super(ReportsState.reportsinitial());

  Future<void> report(ReportRequestBody request) async {
    emit(const ReportsState.reportsloading());

    final response = await repo.reportCourse(request);

    response.when(
      success: (quizResponseBody) {
        emit(ReportsState.reportssuccess(quizResponseBody));
      },
      failure: (errorHandler) {
        emit(
          ReportsState.reportsfailure(
            error: errorHandler.apiErrorModel.message ?? 'حدث خطأ ما',
          ),
        );
      },
    );
  }
}
