class InitializationStatus {}

class MobileAds {
  MobileAds._();
  static MobileAds get instance => MobileAds._();
  Future<InitializationStatus> initialize() async => InitializationStatus();
}
