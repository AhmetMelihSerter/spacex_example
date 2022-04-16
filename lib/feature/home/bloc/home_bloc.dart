import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../core/base/bloc/base_bloc.dart';
import '../model/home_response.dart';
import '../service/i_home_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState, IHomeService> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeFetchEvent>((event, emit) async {
      try {
        emit(HomeLoading());
        final responseModel = await service.getLatestLaunch();
        if (responseModel != null) {
          emit(HomeLoaded(response: responseModel));
        } else {
          emit(HomeError(message: 'Veri Getirilemedi'));
        }
      } catch (e) {
        emit(HomeError(message: 'Veri Getirilemedi'));
      }
    });
    add(HomeFetchEvent());
  }
}
