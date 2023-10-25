class EnterpriseInformationModel {
  final String baejeongPcnt;
  final String eopcheAddr;
  final String eopcheNm;
  final String eopjongGbcd;
  final String gegyumoCd;
  final String hmpgAddr;
  final String rnum;
  final String seonjeongYy;
  final String yeonrakcheoNo;

  EnterpriseInformationModel({
    required this.baejeongPcnt,
    required this.eopcheAddr,
    required this.eopcheNm,
    required this.eopjongGbcd,
    required this.gegyumoCd,
    required this.hmpgAddr,
    required this.rnum,
    required this.seonjeongYy,
    required this.yeonrakcheoNo,
  });

  factory EnterpriseInformationModel.fromJson(Map<String, dynamic> json) {
    return EnterpriseInformationModel(
      baejeongPcnt: json['baejeongPcnt'],
      eopcheAddr: json['eopcheAddr'],
      eopcheNm: json['eopcheNm'],
      eopjongGbcd: json['eopjongGbcd'],
      gegyumoCd: json['gegyumoCd'],
      hmpgAddr: json['hmpgAddr'],
      rnum: json['rnum'],
      seonjeongYy: json['seonjeongYy'],
      yeonrakcheoNo: json['yeonrakcheoNo'],
    );
  }
}
