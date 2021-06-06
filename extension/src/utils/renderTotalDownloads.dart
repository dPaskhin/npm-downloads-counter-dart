import 'dart:html';

import '../classes/PeriodDownload.dart';

void renderTotalDownloads(List<PeriodDownload> periodDownloadList) {
  final $body = document.querySelector('body') as BodyElement;

  $body.querySelector('.js-total-downloads-block')?.remove();

  final $totalDownloadsBlockTemplate = document.createElement('template') as TemplateElement;

  $totalDownloadsBlockTemplate.innerHtml = '''
    <div class='total-downloads-block js-total-downloads-block'>
      <div class='row'>
        <span class='reload js-reload'>
          Reload
        </span>
        <span class='minimize js-minimize'>
          Minimize
        </span>  
      </div>
      <div class='row'>
        <span class='period'>
          Period    
        </span>
        <span class='value'>
          Count of downloads
        </span>
      </div>
      ${periodDownloadList.map((periodDownload) {
        return '''
          <div class='row'>
            <span class='period'>
              ${periodDownload.period}
            </span>
            <span class='value'>
              ${periodDownload.downloads}
            </span>
          </div>
        ''';
      }).join('')}
    </div>
  ''';

  $body.append($totalDownloadsBlockTemplate.content as Node);
}
