import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfoConnectivity {
  Future<bool> get isConnected;
}

class NetworkInfoConnectivityImpl extends NetworkInfoConnectivity{
  final Connectivity connectivity;

  NetworkInfoConnectivityImpl({required this.connectivity});
  
  @override
  Future<bool> get isConnected async {
    return await check();
  }

  Future<bool> check() async {
    List<ConnectivityResult> connectivityResult = await connectivity.checkConnectivity();
    if(connectivityResult.contains(ConnectivityResult.none)){
      return false; // no internet connection
    }

    return await _hasInternetConnection();
  }

  Future<bool> _hasInternetConnection() async {
    try{
      final result = await InternetAddress.lookup('google.com');
      if(result.isNotEmpty && result.first.rawAddress.isNotEmpty){
        return true;
      }
    } catch (e){
      return false;
    }
    return false;
  }
}