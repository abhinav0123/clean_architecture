import 'package:equatable/equatable.dart';
import 'package:clean_architecture/features/home/data/models/get_response_model.dart';

abstract class GetResponseState extends Equatable {
  const GetResponseState();

  @override
  List<Object?> get props => [];
}

class GetResponseInitial extends GetResponseState {
  const GetResponseInitial();
}

class GetResponseLoading extends GetResponseState {
  const GetResponseLoading();
}

class GetResponseLoaded extends GetResponseState {
  final List<GetResponse> response;

  const GetResponseLoaded(this.response);

  @override
  List<Object?> get props => [response];
}

class GetResponseError extends GetResponseState {
  final String message;

  const GetResponseError(this.message);

  @override
  List<Object?> get props => [message];
}
