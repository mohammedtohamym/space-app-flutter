import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
class PlanetData{

  loadData(int i, int j) async{
    final rawData = await rootBundle.loadString('assets/data/solar.csv');
    List<List<dynamic>> listData = CsvToListConverter().convert(rawData);
    return(listData[i][j]);
  }
}