import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SelectMilitaryServiceScreen extends StatelessWidget {
  const SelectMilitaryServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
