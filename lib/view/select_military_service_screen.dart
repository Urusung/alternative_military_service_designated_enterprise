import 'package:alternative_military_service_designated_enterprise/viewmodel/select_military_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectMilitaryServiceScreen extends ConsumerWidget {
  const SelectMilitaryServiceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.white,
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  ref
                      .read(selectMilitaryServiceProvider.notifier)
                      .update((state) => '01');
                  context.go('/search_enterprise');
                },
                child: Container(
                  width: deviceWidth - 16,
                  height: deviceWidth / 6,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(deviceWidth / 28),
                  ),
                  child: Center(
                    child: Text(
                      '전문연구요원',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: deviceWidth / 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 8.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  ref
                      .read(selectMilitaryServiceProvider.notifier)
                      .update((state) => '02');
                  context.go('/search_enterprise');
                },
                child: Container(
                  width: deviceWidth - 16,
                  height: deviceWidth / 6,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(deviceWidth / 28),
                  ),
                  child: Center(
                    child: Text(
                      '산업기능요원',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: deviceWidth / 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 8.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
