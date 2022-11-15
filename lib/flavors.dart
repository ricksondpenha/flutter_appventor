enum Flavor {
  PROD,
  BETA,
  DEV,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'prod';
      case Flavor.BETA:
        return 'beta';
      case Flavor.DEV:
        return 'dev';
      default:
        return 'title';
    }
  }

}
