
import 'package:json_annotation/json_annotation.dart';
part 'pixel_ford_image.g.dart';
@JsonSerializable()
class PixelFordImage {
  String id;
  String filename;
  String title;
  @JsonKey(name: "url_full_size")
  String urlFullSize;
  @JsonKey(name: "url_small_size")
  String urlSmallSize;
  PixelFordImage({
    required this.id,
    required this.filename,
    required this.title,
    required this.urlFullSize,
    required this.urlSmallSize
  });

  /// Connect the generated [_$PixelFormImageFromJson] function to the `fromJson`
  /// factory.
  factory PixelFordImage.fromJson(Map<String, dynamic> json) => _$PixelFordImageFromJson(json);

  /// Connect the generated [_$PixelFormImageToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PixelFordImageToJson(this);

  @override
  String toString() {
    return 'PixelFordImage(id: $id, title: $title, urlSmallSize: $urlSmallSize)';
  }

  /// The JSON Schema for this class.
  // static const jsonSchema = _$PixelFormImageJsonSchema;
}
