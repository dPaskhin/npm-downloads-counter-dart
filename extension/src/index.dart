import 'utils/eventHandlers.dart';
import 'utils/fetchPackageDownloadsByPeriods.dart';
import 'utils/renderTotalDownloads.dart';

void main() async {
  final data = await Future.wait(fetchPackageDownloadsByPeriods());

  renderTotalDownloads(data);

  eventHandlers(main);
}
