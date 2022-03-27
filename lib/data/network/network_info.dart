import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _dataConnectionChecker;

  NetworkInfoImpl(this._dataConnectionChecker);

  Future<bool> checkInernetConnection() async {
    bool result = false;

    var connectivityResult = await _dataConnectionChecker.checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      result = true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      result = true;
    } else if (connectivityResult == ConnectivityResult.ethernet) {
      result = true;
    } else {
      result = false;
    }

    return result;
  }

  @override
  Future<bool> get isConnected => checkInernetConnection();
}
