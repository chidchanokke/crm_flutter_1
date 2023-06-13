import 'package:crm_flutter_1/app/data/repository/initialize.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async{
  if (GetPlatform.isWeb) {
    setPathUrlStrategy();
  }
  await Repository.initialize();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
