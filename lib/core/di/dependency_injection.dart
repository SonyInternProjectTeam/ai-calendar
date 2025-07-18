import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../network/network_info.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // External dependencies
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance);
  getIt.registerLazySingleton<Connectivity>(() => Connectivity());

  // Shared Preferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // Network Info
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(getIt<Connectivity>()),
  );

  // Initialize Hive
  await Hive.initFlutter();

  // TODO: Register data sources, repositories, use cases, and view models
  // This will be implemented in subsequent tasks
}
