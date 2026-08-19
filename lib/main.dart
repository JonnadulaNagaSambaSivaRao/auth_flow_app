import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'services/auth_service.dart';
import 'theme/app_theme.dart';

void main() {
  final authService = AuthService();

  runApp(MyApp(authService: authService));
}

class MyApp extends StatelessWidget {
  final AuthService authService;

  const MyApp({super.key, required this.authService});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/register',

      routes: [
        GoRoute(
          path: '/register',
          builder: (context, state) => RegisterScreen(authService: authService),
        ),

        GoRoute(
          path: '/login',
          builder: (context, state) => LoginScreen(authService: authService),
        ),

        GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Auth Flow',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
