import 'package:alternative_military_service_designated_enterprise/api_authorization_key.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

final selectEnterpriseProvider = FutureProvider(
  (ref) async {
    Dio dio = Dio();
    int numOfRows = 10;
    int pageNo = 1;
    final response = await dio.get(
        'http://apis.data.go.kr/1300000/jjEopChe/list/jjEopChe/list?numOfRows=$numOfRows&pageNo=$pageNo&ServiceKey=$apiAuthorizationKey');
    print(response);
    return response;
  },
);
