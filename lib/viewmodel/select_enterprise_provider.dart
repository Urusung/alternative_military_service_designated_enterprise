import 'package:alternative_military_service_designated_enterprise/api_authorization_key.dart';
import 'package:alternative_military_service_designated_enterprise/model/enterprise_information_model.dart';
import 'package:alternative_military_service_designated_enterprise/viewmodel/select_military_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:xml/xml.dart';

final selectEnterpriseProvider = FutureProvider.autoDispose(
  (ref) async {
    String enterpriseName = '';
    Dio dio = Dio();
    int numOfRows = 1;
    int pageNo = 1;
    List<EnterpriseInformationModel> foundEnterpriseInfoList = [];

    final responseTotalCount = await dio.get(
        'http://apis.data.go.kr/1300000/jjEopChe/list/jjEopChe/list?numOfRows=$numOfRows&pageNo=$pageNo&ServiceKey=$apiAuthorizationKey');
    final xmlResponseTotalCount = XmlDocument.parse(responseTotalCount.data);
    final totalCount = int.parse(xmlResponseTotalCount
            .getElement('response')
            ?.getElement('body')
            ?.getElement('totalCount')
            ?.text ??
        '0');

    final response = await dio.get(
        'http://apis.data.go.kr/1300000/jjEopChe/list/jjEopChe/list?numOfRows=$totalCount&pageNo=$pageNo&ServiceKey=$apiAuthorizationKey');
    final xmlResponse = XmlDocument.parse(response.data);

    for (var i = 0; i < totalCount; i++) {
      final item = xmlResponse
          .getElement('response')
          ?.getElement('body')
          ?.getElement('items')
          ?.findElements('item')
          .elementAt(i);
      EnterpriseInformationModel enterpriseInformationModel =
          EnterpriseInformationModel(
              baejeongPcnt: item?.getElement('baejeongPcnt')?.text ?? '',
              eopcheAddr: item?.getElement('eopcheAddr')?.text ?? '',
              eopcheNm: item
                      ?.getElement('eopcheNm')
                      ?.text
                      .replaceAll('(주)', '')
                      .replaceAll('(유)', '')
                      .replaceAll('(합)', '')
                      .replaceAll('㈜', '')
                      .trim() ??
                  '',
              eopjongGbcd: item?.getElement('eopjongGbcd')?.text ?? '',
              gegyumoCd: item?.getElement('gegyumoCd')?.text ?? '',
              hmpgAddr: item?.getElement('hmpgAddr')?.text ?? '',
              rnum: item?.getElement('rnum')?.text ?? '',
              seonjeongYy: item?.getElement('seonjeongYy')?.text ?? '',
              yeonrakcheoNo: item?.getElement('yeonrakcheoNo')?.text ?? '');

      if (enterpriseInformationModel.eopcheNm.contains(enterpriseName) &&
          enterpriseInformationModel.gegyumoCd ==
              ref.read(selectMilitaryServiceProvider)) {
        foundEnterpriseInfoList.add(enterpriseInformationModel);
      }
    }
    foundEnterpriseInfoList.sort((a, b) => a.eopcheNm.compareTo(b.eopcheNm));
    return foundEnterpriseInfoList;
  },
);

final filteredEnterpriseProvider = StateProvider((ref) {
  return [];
});
