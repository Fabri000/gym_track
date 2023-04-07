import 'package:flutter/material.dart';
import 'package:gym_track/FileManager/file_manager.dart';
import 'package:gym_track/Objects/Enums/app_colors.dart';

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
                  border: TableBorder.all(color: AppColors.DARK.color),
                  headingRowColor:
                      MaterialStatePropertyAll(AppColors.PRIMARY.color),
                  dataRowColor: const MaterialStatePropertyAll(Colors.white),
                  headingTextStyle: const TextStyle(fontSize: 17),
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
    elements.forEach((element) => cells.add(DataCell(Text(element,
        style:
            TextStyle(color: AppColors.CONTENT_TEXT.color, fontSize: 15.0)))));
    return cells;
  }
}
