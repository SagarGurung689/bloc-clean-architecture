import 'package:equatable/equatable.dart';

class GenericModel<T> extends Equatable {
  final int? statusCode;
  final String? message;
  final T data;

  const GenericModel({
    this.statusCode,
    this.message,
    required this.data,
  });

  @override
  List<Object?> get props => [statusCode, message, data];
}

