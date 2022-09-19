import 'package:flutter/material.dart';

DataTable createDataTable_table2() {
  return DataTable(
    columns: _createColumns(),
    rows: _createRows(),
  );
}

List<DataColumn> _createColumns() {
  return const [
    DataColumn(
        numeric: false,
        tooltip: "Coin contenu par le projet",
        label: Text(
          "Projet",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        )),
    DataColumn(
        numeric: true,
        tooltip: "Total misé par projet",
        label: Text(
          "misé",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        )),
    DataColumn(
        numeric: true,
        tooltip: "Total retiré par projet",
        label: Text(
          'retiré',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        )),
    DataColumn(
        numeric: true,
        tooltip: "Total des gains ou perte par projet",
        label: Text(
          "Gain",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w900),
        )),
  ];
}

List<DataRow> _createRows() {
  return [
    const DataRow(cells: [
      DataCell(Text('Junoswap')),
      DataCell(Text('100\$')),
      DataCell(Text('200\$')),
      DataCell(Text('100\$'))
    ]),
    const DataRow(cells: [
      DataCell(Text('Evmos')),
      DataCell(Text('100\$')),
      DataCell(Text('300\$')),
      DataCell(Text('200\$'))
    ]),
  ];
}
