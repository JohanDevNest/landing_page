import 'package:go_router/go_router.dart';

import '../ui/layouts/main_layout/main_layout_page.dart';
import '../ui/views/about_us_view/about_us_view.dart';
import '../ui/views/contact_view/contact_view.dart';
import '../ui/views/home_view/home_view.dart';
import '../ui/views/services_view/about_us_view.dart';
import 'path_routes.dart';

final listRoutes = [
  GoRoute(
    path: Routes.home,
    pageBuilder: (context, state) {
      // key: state.pageKey;
      return const NoTransitionPage(
        child: MainLayoutPage(
          child: HomeView(),
        ),
      );
    },
  ),
  GoRoute(
    path: Routes.aboutUsView,
    pageBuilder: (context, state) {
      // key: state.pageKey;
      return const NoTransitionPage(
        child: MainLayoutPage(
          child: AboutUsView(),
        ),
      );
    },
  ),
  GoRoute(
    path: Routes.servicesRoute,
    pageBuilder: (context, state) {
      // key: state.pageKey;
      return const NoTransitionPage(
        child: MainLayoutPage(
          child: ServicesView(),
        ),
      );
    },
  ),
  GoRoute(
    path: Routes.contactRoute,
    pageBuilder: (context, state) {
      // key: state.pageKey;
      return const NoTransitionPage(
        child: MainLayoutPage(
          child: ContactView(),
        ),
      );
    },
  ),
];
