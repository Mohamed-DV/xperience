import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

void setupLogging() {
  if (kDebugMode) {
    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      print(
          '${record.loggerName} - ${record.level.name}: ${record.time}: ${record.message}');
    });
  }
}
