import 'package:json_annotation/json_annotation.dart';

part 'format_model.g.dart';

@JsonSerializable()
class FormatModel {
  @JsonKey(name: 'application/x-mobipocket-ebook')
  final String? ebook;

  @JsonKey(name: 'application/epub+zip')
  final String? epubZip;

  @JsonKey(name: 'image/jpeg')
  final String? image;

  @JsonKey(name: 'application/rdf+xml')
  final String? rdfXml;

  @JsonKey(name: 'text/html')
  final String? textHtml;

  FormatModel({
    this.ebook,
    this.epubZip,
    this.image,
    this.rdfXml,
    this.textHtml,
  });

  factory FormatModel.fromJson(Map<String, dynamic> json) =>
      _$FormatModelFromJson(json);

  Map<String, dynamic> toJson() => _$FormatModelToJson(this);
}
