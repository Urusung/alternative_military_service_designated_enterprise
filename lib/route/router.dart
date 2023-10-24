import 'package:alternative_military_service_designated_enterprise/view/search_enterprise_screen.dart';
import 'package:alternative_military_service_designated_enterprise/view/select_military_service_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SelectMilitaryServiceScreen(),
      routes: [
        GoRoute(
          path: 'search_enterprise',
          // /search_enterprise
          builder: (context, state) => const SearchEnterpriseSreen(),
        ),
      ],
    ),
  ],
);
