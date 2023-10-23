import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectMilitaryServiceScreen extends StatelessWidget {
  const SelectMilitaryServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: deviceWidth - 16,
                height: deviceWidth / 6,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(deviceWidth / 28),
                ),
                child: GestureDetector(
                  onTap: () {},
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
              Container(
                width: deviceWidth - 16,
                height: deviceWidth / 6,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(deviceWidth / 28),
                ),
                child: GestureDetector(
                  onTap: () {},
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
