import 'package:freezed_annotation/freezed_annotation.dart';

part 'openbd_response.freezed.dart';
part 'openbd_response.g.dart';

@freezed
class OpenBDResponse with _$OpenBDResponse {
  const factory OpenBDResponse({
    OpenBDSummary? summary,
    OpenBDOnix? onix,
    OpenBDHanmoto? hanmoto,
  }) = _OpenBDResponse;

  factory OpenBDResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenBDResponseFromJson(json);
}

@freezed
class OpenBDSummary with _$OpenBDSummary {
  const factory OpenBDSummary({
    String? cover,
    String? isbn,
    String? title,
    String? author,
    String? publisher,
  }) = _OpenBDSummary;

  factory OpenBDSummary.fromJson(Map<String, dynamic> json) =>
      _$OpenBDSummaryFromJson(json);
}

@freezed
class OpenBDOnix with _$OpenBDOnix {
  const factory OpenBDOnix({
    OpenBDCollateralDetail? CollateralDetail,
  }) = _OpenBDOnix;

  factory OpenBDOnix.fromJson(Map<String, dynamic> json) =>
      _$OpenBDOnixFromJson(json);
}

@freezed
class OpenBDCollateralDetail with _$OpenBDCollateralDetail {
  const factory OpenBDCollateralDetail({
    List<OpenBDTextContent>? TextContent,
  }) = _OpenBDCollateralDetail;

  factory OpenBDCollateralDetail.fromJson(Map<String, dynamic> json) =>
      _$OpenBDCollateralDetailFromJson(json);
}

@freezed
class OpenBDTextContent with _$OpenBDTextContent {
  const factory OpenBDTextContent({
    String? Text,
    String? TextType,
  }) = _OpenBDTextContent;

  factory OpenBDTextContent.fromJson(Map<String, dynamic> json) =>
      _$OpenBDTextContentFromJson(json);
}

@freezed
class OpenBDHanmoto with _$OpenBDHanmoto {
  const factory OpenBDHanmoto({
    String? maegakinado,
  }) = _OpenBDHanmoto;

  factory OpenBDHanmoto.fromJson(Map<String, dynamic> json) =>
      _$OpenBDHanmotoFromJson(json);
}
