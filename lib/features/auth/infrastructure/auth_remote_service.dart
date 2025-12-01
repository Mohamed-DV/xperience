import 'package:dio/dio.dart';
import 'package:spots_xplorer_app/core/infrastructure/helpers/remote_service_helper.dart';


class AuthRemoteService extends RemoteServiceHelper {
  final Dio _dio;

  AuthRemoteService(this._dio);

}
