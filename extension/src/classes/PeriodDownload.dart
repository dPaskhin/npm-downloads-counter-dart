class PeriodDownload {
  String period;
  int downloads;

  PeriodDownload(this.period, this.downloads);

  factory PeriodDownload.fromJson(String period, Map<String, dynamic> json) {
    return PeriodDownload(
      period,
      json['downloads'],
    );
  }
}
