import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GetDataTable {
  static Future<List<DataRow>> parsingDataUser(List<dynamic>? value) async {
    var jsonFormat = jsonEncode(value);

    List<DataRow> dataRows = [];
    List<dynamic>? dataJson = jsonDecode(jsonFormat);

    // bool firstRow = true;

    if (dataJson != null) {
      for (var item in dataJson) {
        String date = ubahFormatDate(item['date']);
        String time = ubahFormatTime(item['date']);
        String nilai = ubahFormatNumber(item['total']);

        dataRows.add(DataRow(
          cells: [
            DataCell(
              Text(
                date,
                // style: TextStyle(color: firstRow ? Colors.white : Colors.black),
              ),
            ),
            DataCell(
              Text(
                time,
                // style: TextStyle(color: firstRow ? Colors.white : Colors.black),
              ),
            ),
            DataCell(
              Text(
                nilai,
                // style: TextStyle(color: firstRow ? Colors.white : Colors.black),
              ),
            ),
          ],
        ));

        // firstRow = false;
      }
      return dataRows;
    } else {
      return [];
    }
  }

  static ubahFormatNumber(String value) {
    NumberFormat format = NumberFormat.decimalPattern('id');
    double number = double.parse(value.replaceAll(',', '.'));
    return format.format(number);
  }

  static ubahFormatDate(String value) {
    DateTime format = DateTime.parse(value);
    String date = "${format.toLocal()}".split(' ')[0];
    return (date);
  }

  static ubahFormatTime(String value) {
    DateTime format = DateTime.parse(value);
    String time = "${format.toLocal()}".split(' ')[1].substring(0, 8);
    return (time);
  }
}
