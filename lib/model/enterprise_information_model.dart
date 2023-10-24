class Response {
  final Header header;
  final Body body;

  Response({required this.header, required this.body});

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      header: Header.fromJson(json['header']),
      body: Body.fromJson(json['body']),
    );
  }
}

class Header {
  final String resultCode;
  final String resultMsg;

  Header({required this.resultCode, required this.resultMsg});

  factory Header.fromJson(Map<String, dynamic> json) {
    return Header(
      resultCode: json['resultCode'],
      resultMsg: json['resultMsg'],
    );
  }
}

class Body {
  final List<Item> items;
  final int numOfRows;
  final int pageNo;
  final int totalCount;

  Body(
      {required this.items,
      required this.numOfRows,
      required this.pageNo,
      required this.totalCount});

  factory Body.fromJson(Map<String, dynamic> json) {
    return Body(
      items:
          (json['items'] as List).map((item) => Item.fromJson(item)).toList(),
      numOfRows: json['numOfRows'],
      pageNo: json['pageNo'],
      totalCount: json['totalCount'],
    );
  }
}

class Item {
  final int baejeongPcnt;
  final String eopcheAddr;
  final String eopcheNm;
  final String eopjongGbcd;
  final String gegyumoCd;
  final int rnum;
  final int seonjeongYy;
  final String yeonrakcheoNo;

  Item({
    required this.baejeongPcnt,
    required this.eopcheAddr,
    required this.eopcheNm,
    required this.eopjongGbcd,
    required this.gegyumoCd,
    required this.rnum,
    required this.seonjeongYy,
    required this.yeonrakcheoNo,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      baejeongPcnt: json['baejeongPcnt'],
      eopcheAddr: json['eopcheAddr'],
      eopcheNm: json['eopcheNm'],
      eopjongGbcd: json['eopjongGbcd'],
      gegyumoCd: json['gegyumoCd'],
      rnum: json['rnum'],
      seonjeongYy: json['seonjeongYy'],
      yeonrakcheoNo: json['yeonrakcheoNo'],
    );
  }
}
