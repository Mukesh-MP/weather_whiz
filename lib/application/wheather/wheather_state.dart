part of 'wheather_bloc.dart';

@freezed
class WheatherState with _$WheatherState {
  const factory WheatherState(
      {required bool isLoading,
      WheatherResponseModel? wheatherData,
      required Option<Either<MainFailure, WheatherResponseModel>>
          successOrFailureOption}) = _WheatherState;

  factory WheatherState.initial() {
    return const WheatherState(
      isLoading: false,
      successOrFailureOption: None(),
    );
  }
}
