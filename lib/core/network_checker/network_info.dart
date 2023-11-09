import 'package:internet_connection_checker/internet_connection_checker.dart';

/// An abstract class representing the contract for checking network information.
abstract class NetworkInfo {
  /// Returns a [Future] of [bool] indicating if there is an active internet connection.
  Future<bool> get isConnected;
}

/// The concrete implementation of [NetworkInfo] using [InternetConnectionChecker].
class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker _connectionChecker;

  /// Constructor expects an instance of [InternetConnectionChecker].
  NetworkInfoImpl(this._connectionChecker);

  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}
