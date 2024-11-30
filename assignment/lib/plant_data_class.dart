import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
class PlanetData{

  late List<List> dataList ;

  PlanetData(){
    loadData();
  }
  loadData() async{
    final rawData = await rootBundle.loadString('assets/data/solar.csv');
    List<List<dynamic>> listData = CsvToListConverter().convert(rawData);
    dataList = listData;
    return(listData);
  }
}