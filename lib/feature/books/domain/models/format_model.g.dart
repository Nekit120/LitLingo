// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormatModel _$FormatModelFromJson(Map<String, dynamic> json) => FormatModel(
      ebook: json['application/x-mobipocket-ebook'] as String?,
      epubZip: json['application/epub+zip'] as String?,
      image: json['image/jpeg'] as String?,
      rdfXml: json['application/rdf+xml'] as String?,
      textHtml: json['text/html'] as String?,
    );

Map<String, dynamic> _$FormatModelToJson(FormatModel instance) =>
    <String, dynamic>{
      'application/x-mobipocket-ebook': instance.ebook,
      'application/epub+zip': instance.epubZip,
      'image/jpeg': instance.image,
      'application/rdf+xml': instance.rdfXml,
      'text/html': instance.textHtml,
    };
