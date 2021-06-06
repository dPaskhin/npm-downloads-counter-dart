import 'dart:convert';
import 'dart:html';

import '../classes/PeriodDownload.dart';
import 'getPackageName.dart';
import 'periods.dart';

List<Future<PeriodDownload>> fetchPackageDownloadsByPeriods() {
  String packageName = getPackageName();

  return List.from(periods.map((period) async {
    final jsonString = await HttpRequest.getString('https://api.npmjs.org/downloads/point/$period/$packageName');
    final parsed = await jsonDecode(jsonString);

    return PeriodDownload.fromJson(period, parsed);
  }));
}
