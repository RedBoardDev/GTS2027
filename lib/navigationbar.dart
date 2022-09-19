import 'package:flutter/material.dart';
import 'datatable_page2.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        backgroundColor: Colors.black12,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.house_rounded),
            icon: Icon(Icons.house_outlined),
            label: 'home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_balance_wallet),
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'staking',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.price_change),
            icon: Icon(Icons.price_change_outlined),
            label: 'coin price',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.build),
            icon: Icon(Icons.build_outlined),
            label: 'settings',
          ),
        ],
      ),
      body: <Widget>[
        Container(
            color: Colors.black26,
            alignment: Alignment.center,
            child: Container(
              child: const Text('Page 10'),
            )),
        Container(
          child: DataTable(columns: const [
            DataColumn(label: Text("ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Action")),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Thomas")),
              DataCell(Text("Thomas")),
            ])
          ]),
        ),
        Container(
          color: Colors.black26,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.black26,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
