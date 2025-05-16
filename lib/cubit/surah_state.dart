part of 'surah_cubit.dart';

abstract class SurahState extends Equatable{
  List<Object?> get props => [];
}

final class SurahInitial extends SurahState {}

class SurahLoading extends SurahState {}

class SurahLoaded extends SurahState {
  final List<Data> surahs;
  SurahLoaded(this.surahs);

  @override
  List<Object?> get props => [surahs];
}

class SurahError extends SurahState {
  final String message;
  SurahError(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}


