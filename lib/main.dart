import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_studyk/common/const/colors.dart';
import 'package:flutter_studyk/common/provider/go_router.dart';
import 'package:flutter_studyk/common/provider/provider_observer.dart';

void main() {
  runApp(
     ProviderScope(
      observers: [
        CustomProviderLogger(),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Study K',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NotoSans',
        useMaterial3: true,
        backgroundColor: BG_COLOR,
        scaffoldBackgroundColor: BG_COLOR,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
    );
  }
}

