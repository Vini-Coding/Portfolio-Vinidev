import 'package:flutter/material.dart';
import 'package:portfolio_vinidev/app/dashboard/dashboard_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        DashboardPage.routeName: (context) => const DashboardPage(),
      },
    );
  }
}
