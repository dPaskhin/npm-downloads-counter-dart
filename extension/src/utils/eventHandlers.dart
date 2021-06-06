import 'dart:html';

void eventHandlers(Function onReload) {
  const MINIMIZED_MODIFIER = '_minimized';

  final $reload = document.querySelector('.js-reload');
  final $minimize = document.querySelector('.js-minimize');
  final $totalDownloadsBlock =
      document.querySelector('.js-total-downloads-block') as DivElement?;

  if ($reload == null || $minimize == null || $totalDownloadsBlock == null) {
    return;
  }

  $reload.addEventListener('click', (event) => onReload());

  $minimize.addEventListener('click', (event) {
    if ($totalDownloadsBlock.classes.contains(MINIMIZED_MODIFIER)) {
      $totalDownloadsBlock.classes.remove(MINIMIZED_MODIFIER);
      $minimize.text = 'Minimize';

      return;
    }

    $totalDownloadsBlock.classes.add(MINIMIZED_MODIFIER);
    $minimize.text = 'Maximize';
  });
}
