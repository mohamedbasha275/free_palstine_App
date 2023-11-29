part of 'news_cubit.dart';

@immutable

abstract class NewsState {
  const NewsState();
}

class NewsInitial extends NewsState {}
class NewsLoading extends NewsState {}
class NewsEmpty extends NewsState {}
class NewsFailure extends NewsState {
  final String errorMessage;
  const NewsFailure(this.errorMessage);
}
class NewsSuccess extends NewsState {
  final List<NewsModel> news;
  const NewsSuccess(this.news);
}