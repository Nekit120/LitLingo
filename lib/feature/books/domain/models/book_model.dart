import 'package:json_annotation/json_annotation.dart';
import 'format_model.dart';

part 'book_model.g.dart';

@JsonSerializable()
class BookModel {
  final int id;
  final String title;
  final FormatModel formats;

  BookModel({
    required this.id,
    required this.title,
    required this.formats,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
