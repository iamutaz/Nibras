import 'package:nibras/features/search/model/search_response_body.dart';


abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final List<SearchResponseBody> courses;
  SearchSuccess(this.courses);
}

class SearchFailure extends SearchState {
  final String error;
  SearchFailure(this.error);
}