import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foundit/config/routes/app_route.dart';
import 'package:foundit/config/themes/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreenRoute,
      routes: AppRoute.getAppRoutes(),
      theme: AppTheme.getApplicationTheme(),
    );
  }
}
