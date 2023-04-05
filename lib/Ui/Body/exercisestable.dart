import 'package:flutter/material.dart';
import 'package:gym_track/FileManager/file_manager.dart';

class ExerciseTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FileManager.instance.readFileLines(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView(
            children: [
              DataTable(
                  columns: generateColumn(snapshot.data!.first),
                  rows: generateRows(snapshot.data!))
            ],
          );
        }
      },
    );
  }

  List<DataColumn> generateColumn(String header) {
    List<DataColumn> column = [];
    header.split(",").forEach((element) {
      column.add(DataColumn(label: Text(element)));
    });
    return column;
  }

  List<DataRow> generateRows(List<String> list) {
    list.remove(list.first);
    List<DataRow> rows = [];
    list.forEach((element) {
      rows.add(DataRow(cells: createCells(element.split(","))));
    });
    return rows;
  }

  List<DataCell> createCells(List<String> elements) {
    List<DataCell> cells = [];
    elements.forEach((element) => cells.add(DataCell(Text(element))));
    return cells;
  }
}
