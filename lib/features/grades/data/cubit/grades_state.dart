import 'package:nibras/features/grades/data/model/quiz_results_response_body.dart';

abstract class GradesState {}

class GradesInitial extends GradesState {}

class GradesLoading extends GradesState {}

class GradesSuccess extends GradesState {
  final QuizResultsResponseBody data;
  GradesSuccess(this.data);
}

class GradesFailure extends GradesState {
  final String error;
  GradesFailure(this.error);
}