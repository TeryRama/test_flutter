import 'package:flutter/material.dart';
import 'package:tes_flutter/util/custom_data_table.dart';
import 'package:tes_flutter/util/sql_helper_user.dart';

class CustomDatabaseLogin {
  static Future<bool> saveData(
      String name, String email, String password, String role) async {
    return await SqlHelperTimbangan.insertDataDB(name, email, password, role);
  }

  static Future<List<DataRow>> getData() async {
    dynamic data = await SqlHelperTimbangan.getDataDB();
    // print(data);
    return await GetDataTable.parsingDataUser(data);
  }

  static Future<bool> getDataWhere(String email, String password) async {
    bool data = await SqlHelperTimbangan.getDataWhereDB(email, password);
    return (data);
  }
}
