import 'package:go_router/go_router.dart';

import '../ui/layouts/main_layout/main_layout_page.dart';
import '../ui/views/about_us_view/about_us_view.dart';
import '../ui/views/contact_view/contact_view.dart';
import '../ui/views/services_view/services_view.dart';
import 'path_routes.dart';

final listRoutes = [
  GoRoute(
    path: Routes.home,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        child: MainLayoutPage(
          child: const ServicesView(),
        ),
      );
    },
  ),
  GoRoute(
    path: Routes.aboutUsView,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        child: MainLayoutPage(
          child: const AboutUsView(),
        ),
      );
    },
  ),
  GoRoute(
    path: Routes.servicesRoute,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        child: MainLayoutPage(
          child: const ServicesView(),
        ),
      );
    },
  ),
  GoRoute(
    path: Routes.contactRoute,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        child: MainLayoutPage(
          child: const ContactView(),
        ),
      );
    },
  ),
];
