enum Flavor {
  prod,
  stg,
  dev,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Flutter UaaL with Niantic';
      case Flavor.stg:
        return 'Flutter UaaL with Niantic Stg';
      case Flavor.dev:
        return 'Flutter UaaL with Niantic Dev';
    }
  }

}
