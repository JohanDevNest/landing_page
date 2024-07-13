import 'package:go_router/go_router.dart';

import '../ui/layouts/main_layout/main_layout_page.dart';
import 'path_routes.dart';

final listRoutes = [
  GoRoute(
    name: RoutesName.home,
    path: Routes.home,
    pageBuilder: (context, state) {
      // key: state.pageKey;
      return const NoTransitionPage(
        child: MainLayoutPage()
      );
    },
  ),
];
