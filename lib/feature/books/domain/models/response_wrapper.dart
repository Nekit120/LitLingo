import 'package:json_annotation/json_annotation.dart';
import 'book_model.dart';

part 'response_wrapper.g.dart';

@JsonSerializable()
class ResponseWrapper {
  final int? count;
  final String? next;
  final String? previous;
  final List<BookModel> results;

  ResponseWrapper({
    this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory ResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$ResponseWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseWrapperToJson(this);
}
