import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_whiz/domain/core/failure/main_failures.dart';
import 'package:weather_whiz/domain/wheather/i_wheatherdata_repo.dart';
import 'package:weather_whiz/domain/wheather/wheather_response_model.dart';

part 'wheatherevent.dart';
part 'wheather_state.dart';
part 'wheather_bloc.freezed.dart';

class WheatherBloc extends Bloc<WheatherEvent, WheatherState> {
  final IWheatherDataRepo wheatherDataRepo;
  WheatherBloc(this.wheatherDataRepo) : super(WheatherState.initial()) {
    on<_GetWheatherData>((event, emit) async {
      emit(state.copyWith(isLoading: true, successOrFailureOption: none()));
      final Either<MainFailure, WheatherResponseModel> wheatherOptions =
          await wheatherDataRepo.getWheatherData();
      emit(wheatherOptions.fold(
        (l) => state.copyWith(
            isLoading: false, successOrFailureOption: some(Left(l))),
        (r) => state.copyWith(
            isLoading: false,
            successOrFailureOption: some(Right(r)),
            wheatherData: r),
      ));
    });
  }
}
