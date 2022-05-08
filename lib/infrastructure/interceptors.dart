import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'exceptions.dart';
import 'package:chopper/chopper.dart';

class NetworkInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivity = await Connectivity().checkConnectivity();

    if (connectivity == ConnectivityResult.none) {
      throw NetworkException();
    }
    return request;
  }
}

class BeckendInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.statusCode >= 500) {
      throw BackendException();
    }
    return response;
  }
}
