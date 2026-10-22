import 'package:appecommerce/core/network/dio_client.dart';
import 'package:appecommerce/core/storage/preference_service.dart';
import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferenceServices = PreferenceService.init();
  final dioClient = DioClient(preferenceService: await preferenceServices);
  runApp(MyApp(dioClient: dioClient, preferenceService: await preferenceServices,));
}
