part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final HomeResponse response;

  HomeLoaded({required this.response});

  @override
  List<Object?> get props => [response];
}

class HomeError extends HomeState {
  final String message;

  HomeError({required this.message});

  @override
  List<Object?> get props => [message];
}
