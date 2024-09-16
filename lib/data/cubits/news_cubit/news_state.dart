part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsSuccess extends NewsState {
  NewsResponse response;
  NewsSuccess({required this.response});
}

final class NewsError extends NewsState {}
