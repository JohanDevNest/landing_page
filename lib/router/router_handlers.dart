import 'package:fluro/fluro.dart';
import 'package:landing_page/ui/layouts/main_layout/main_layout_page.dart';


final homeHandler = Handler(
  handlerFunc: (context, params){
  return MainLayoutPage();
  }
);