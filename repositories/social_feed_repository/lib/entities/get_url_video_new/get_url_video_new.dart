import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_url_video_new.freezed.dart';
part 'get_url_video_new.g.dart';

@freezed
class GetUrlVideoNew with _$GetUrlVideoNew {
  const factory GetUrlVideoNew({
    ItemListDetail? ItemList,
  }) = _GetUrlVideoNew;

  factory GetUrlVideoNew.fromJson(Map<String, dynamic> json) =>
      _$GetUrlVideoNewFromJson(json);
}

@freezed
class ItemListDetail with _$ItemListDetail {
  const factory ItemListDetail({VideoDetail? video}) = _ItemListDetail;

  factory ItemListDetail.fromJson(Map<String, dynamic> json) =>
      _$ItemListDetailFromJson(json);
}

@freezed
class VideoDetail with _$VideoDetail {
  const factory VideoDetail({List<Preload>? preloadList}) = _VideoDetail;

  factory VideoDetail.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailFromJson(json);
}

@freezed
class Preload with _$Preload {
  const factory Preload({String? url}) = _Preload;

  factory Preload.fromJson(Map<String, dynamic> json) =>
      _$PreloadFromJson(json);
}
