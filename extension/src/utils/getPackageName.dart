import 'dart:html';

String getPackageName() => window.location.pathname?.split('/').last ?? '';
