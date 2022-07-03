import 'package:flutter/material.dart';
import 'resources/routes_manager.dart';
import 'resources/style/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gym App',
      theme: getAppTheme(c0ntext: context),
      onGenerateRoute: RouteGenerator.getRoutes,
      initialRoute: Routes.homeScreen,
    );
  }
}
