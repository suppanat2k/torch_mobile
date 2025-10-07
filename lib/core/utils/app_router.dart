import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:torch_mobile/main.dart';
import 'package:torch_mobile/screens/auth/ui/app_login.dart';

class AppRouter {
  static final GoRouter routes = GoRouter(
    initialLocation: "/login",
    routes: <RouteBase>[
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const AppLogin();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const MainScaff();
        },
      ),
    ],
  );
}
