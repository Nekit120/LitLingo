import 'package:json_annotation/json_annotation.dart';
import 'package:lit_lingo/core/data/model/validation_error_entry.dart';

part 'validation_error.g.dart';

@JsonSerializable()
class ValidationErrorResponse {
  final String title;
  final int status;
  final String detail;
  final Map<String, List<ValidationErrorEntry>> errors;

  ValidationErrorResponse({
    required this.title,
    required this.status,
    required this.detail,
    required this.errors,
  });

  factory ValidationErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ValidationErrorResponseToJson(this);
}
