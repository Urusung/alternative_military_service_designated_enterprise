import 'package:alternative_military_service_designated_enterprise/view/select_military_service_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SelectMilitaryServiceScreen(),
      ),
    ),
  );
}
