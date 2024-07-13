import 'package:fluro/fluro.dart';
import '../ui/layouts/main_layout/main_layout_page.dart';


final homeHandler = Handler(
  handlerFunc: (context, params){
  return const MainLayoutPage();
  }
);