// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class DbHelper {
//   var _db;

//   Future<Database> get database async {
//     if (_db != null) return _db;
//     _db = openDatabase(
//       join(await getDatabasesPath(),
//           'alternative_military_service_designated_enterprise_database.db'),
//       version: 1,
//       onCreate: (db, version) async {
//         await db.execute(
//             "CREATE TABLE ENTERPRISE_INFORMAION_TABLE(mac TEXT, uuid TEXT, name TEXT, battery INTEGER, coreBodyTemp REAL, temp1 REAL, temp2 REAL, temp3 REAL, standardTemp REAL, saveDateTime TEXT)");
//       },
//     );
//     return _db;
//   }

//   Future<void> insertSensorData(
//       SensorItemModel sensorData, double? standardTemp) async {
//     final db = await database;
//     await db.insert(
//         'ENTERPRISE_INFORMAION',
//         {
//           'mac': sensorData.mac,
//           'uuid': sensorData.uuid,
//           'name': sensorData.name,
//           'battery': sensorData.battery,
//           'coreBodyTemp': sensorData.coreBodyTemp,
//           'temp1': sensorData.temp1,
//           'temp2': sensorData.temp2,
//           'temp3': sensorData.temp3,
//           'standardTemp': standardTemp,
//           'saveDateTime': sensorData.saveDateTime
//         },
//         conflictAlgorithm: ConflictAlgorithm.replace);
//   }
// }
