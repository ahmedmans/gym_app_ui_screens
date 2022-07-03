import 'package:flutter/material.dart';
import '../screen/home_screen.dart';
import '../screen/rating_clinet/rate_clinte_screen.dart';
import '../screen/schedule_screen/schedule_screen.dart';
import '../screen/training_options/training_options_screen.dart';

class Routes {
  static const String homeScreen = '/';
  static const String trainingOptions = '/trainingOptionsScreen';
  static const String scheduleScreen = '/scheduleScreen';
  static const String rateClinteScreen = '/rateClinteScreen';
}

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.trainingOptions:
        return MaterialPageRoute(builder: (_) => const TrainingOptionsScreen());

      case Routes.rateClinteScreen:
        return MaterialPageRoute(builder: (_) => const RateClinetScreen());
      case Routes.scheduleScreen:
        return MaterialPageRoute(builder: (_) => const SchedluleScreen());

      default:
        return unFoundPage();
    }
  }

  static Route<dynamic> unFoundPage() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(
                child: Text('Page Not Founded'),
              ),
            ));
  }
}
