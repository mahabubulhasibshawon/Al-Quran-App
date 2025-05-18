part of 'surah_details_cubit.dart';

@immutable
sealed class SurahDetailsState {}

final class SurahDetailsInitial extends SurahDetailsState {}

class SurahDetailsLoading extends SurahDetailsState {}

class SurahDetailsLoaded extends SurahDetailsState {
  final SurahDetailsModel surah;
  SurahDetailsLoaded(this.surah);
}

class SurahDetailsError extends SurahDetailsState {
  final String message;
  SurahDetailsError(this.message);
}