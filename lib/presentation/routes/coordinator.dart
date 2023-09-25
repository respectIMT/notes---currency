import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'entity/routes.dart';

//final localSource = inject<LocalSource>();

final GoRouter router = GoRouter(
    initialLocation: Routes.home.path,
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      // GoRoute(
      //   name: Routes.splashscreen.name,
      //   path: Routes.splashscreen.path,
      //   pageBuilder: (context, state) => MaterialPage<void>(
      //     key: state.pageKey,
      //     child: const SplashScreen(),
      //   ),
      // ),
      // GoRoute(
      //   name: Routes.security.name,
      //   path: Routes.security.path,
      //   pageBuilder: (context, state) => MaterialPage<void>(
      //     key: state.pageKey,
      //     child:  SecurityPage(type: state.extra as String),
      //   ),
      // ),
    ],
    errorBuilder: (context, state) => const SizedBox());
