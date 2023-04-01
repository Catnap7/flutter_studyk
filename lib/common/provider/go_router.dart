import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_studyk/common/view/error_screen.dart';
import 'package:flutter_studyk/common/view/root_tab.dart';
import 'package:flutter_studyk/common/view/splash_screen.dart';
import 'package:flutter_studyk/info/view/info_detail_screen.dart';
import 'package:flutter_studyk/info/view/info_screen.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    // 앱 첫 시작화면 지정
    initialLocation: '/splash',
    errorBuilder: (context, state) =>
        ErrorScreen(error: state.error.toString()),
    routes: _routes,
    // refreshListenable: provider,
    redirect: _redirectLogic,
  );
});

List<GoRoute> get _routes => [
      GoRoute(
        path: '/',
        name: RootTab.routeName,
        builder: (_, __) => RootTab(),
        routes: [
          GoRoute(
            path: 'info',
            name: InfoScreen.routeName,
            builder: (_, __) => InfoScreen(),
            routes: [
              GoRoute(
                path: 'infoDetail/:name',
                name: InfoDetailScreen.routeName,
                builder: (_, state) => InfoDetailScreen(
                  name: state.params['name']!,
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/splash',
        name: SplashScreen.routeName,
        builder: (_, __) => SplashScreen(),
      ),
      /*GoRoute(
        path: 'info',
        name: InfoScreen.routeName,
        builder: (_, __) => InfoScreen(),
      ),*/
    ];

String? _redirectLogic(_, GoRouterState state) {
  // if (state.location == '/login') {
  //   return '/login';
  // }
  return state.location == '/splash' ? '/' : null;
}
