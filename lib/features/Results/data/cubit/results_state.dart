import 'package:nibras/features/search/model/search_response_body.dart';

abstract class ResultsState {}

class ResultsInitial extends ResultsState {}

class ResultsLoading extends ResultsState {}

class ResultsSuccess extends ResultsState {
  final List<SearchResponseBody> courses;
  ResultsSuccess(this.courses);
}

class ResultsFailure extends ResultsState {
  final String error;
  ResultsFailure(this.error);
}