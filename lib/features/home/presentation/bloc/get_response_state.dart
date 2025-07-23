part of 'get_response_cubit.dart';

@freezed
class GetResponseState with _$GetResponseState {
  const factory GetResponseState.initial() = _Initial;
  const factory GetResponseState.loading() = _Loading;
  const factory GetResponseState.loaded(List<GetResponse> response) = _Loaded;
  const factory GetResponseState.error(String message) = _Error;
}
