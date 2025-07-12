class VariantInfo {
  VariantInfo({
    this.bitrate,
    this.videoGroupId,
    this.audioGroupId,
    this.subtitleGroupId,
    this.captionGroupId,
  });

  final int? bitrate;
  final String? videoGroupId;
  final String? audioGroupId;
  final String? subtitleGroupId;
  final String? captionGroupId;

  @override
  bool operator ==(dynamic other) {
    if (other is VariantInfo) {
      return other.bitrate == bitrate &&
          other.videoGroupId == videoGroupId &&
          other.audioGroupId == audioGroupId &&
          other.subtitleGroupId == subtitleGroupId &&
          other.captionGroupId == captionGroupId;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(
      bandwidth,
      averageBandwidth,
      codecs,
      resolution,
      frameRate,
      videoGroupId,
      audioGroupId,
      subtitleGroupId,
      closedCaptionGroupId,
  );
}
