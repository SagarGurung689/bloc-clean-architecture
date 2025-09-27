import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({required String name, required int age}) = _Person;
}
