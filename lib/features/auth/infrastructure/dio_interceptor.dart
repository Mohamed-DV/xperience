import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spots_xplorer_app/core/utils/base_url.dart';
import 'package:spots_xplorer_app/core/utils/local_storage.dart';

import 'authenticator.dart';

class DioInterceptor extends Interceptor {
  final AuthRepository _authenticator;

  DioInterceptor(this._authenticator);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    Logger().i(baseUrl);
    // final tokens = await _authenticator.getTokens();
       final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(LocalStorage.tokenKey);
 
    final modifiedOptions =
        options
          ..headers.addAll(
            token == null
                ? {}
                : {
                  'Authorization': 'Bearer $token',
                  'Content-Type': 'application/json; charset=UTF-8',
                },
          );

    modifiedOptions
      ..baseUrl = baseUrl
      ..connectTimeout = const Duration(seconds: 10);

    handler.next(modifiedOptions);
  }
}

class LoggingInterceptor extends InterceptorsWrapper {
  int maxCharactersPerLine = 200;
  String baseUrl;

  LoggingInterceptor({required this.baseUrl});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    Logger().d(
      "${options.method}\nPath ${options.path} \nOptions on Request \nBody: ${options.data} \nHeaders: ${options.headers} \nQuery Parameters: ${options.queryParameters}",
    );

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    Logger().d(
      "${response.requestOptions.method}\nStatusCode ${response.statusCode}\nPath ${response.requestOptions.path}",
    );

    final String responseAsString = response.data.toString();

    if (responseAsString.length > maxCharactersPerLine) {
      final int iterations =
          (responseAsString.length / maxCharactersPerLine).floor();
      for (int i = 0; i <= iterations; i++) {
        int endingIndex = i * maxCharactersPerLine + maxCharactersPerLine;
        if (endingIndex > responseAsString.length) {
          endingIndex = responseAsString.length;
        }
      }
    }
    return super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    Logger().wtf(
      "On DioError"
      "$err",
    );

    Logger().e(
      "ERROR[${err.response != null ? err.response?.statusCode : err}] => PATH: ${err.requestOptions.path}",
    );
    Logger().e(
      "ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}",
    );

    return super.onError(err, handler);
  }
}
