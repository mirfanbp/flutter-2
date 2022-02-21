import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Drivers extends StatelessWidget {
  // const Drivers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 6),
                  color: Colors.grey.withOpacity(.1),
                  blurRadius: 12,
                ),
              ],
              border: Border.all(color: Colors.grey, width: .5)),
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              DataTable2(
                  columnSpacing: 12,
                  horizontalMargin: 12,
                  minWidth: 600,
                  columns: const [
                    DataColumn2(
                      label: Text('Name'),
                      size: ColumnSize.L,
                    ),
                    DataColumn(
                      label: Text('Location'),
                    ),
                    DataColumn(
                      label: Text('Rating'),
                    ),
                    DataColumn(
                      label: Text('Action'),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                      7,
                      (index) => DataRow(cells: [
                            DataCell(Text('Irfan Prakoso')),
                            // DataCell(Text('A ${index}' * (10 - index % 10))),
                            DataCell(Text('B' * (10 - (index + 5) % 10))),
                            DataCell(
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  // CustomText(text: '4.$index')
                                ],
                              ),
                            ),
                            DataCell(Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: .5,
                                  ),
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: const Text(
                                'BLock Drivers',
                                style: TextStyle(color: Colors.white),
                              ),
                              // CustomText(
                              //   text: 'Block Driver',
                              //   color: active.withOpacity(.7),
                              //   weight: FontWeight.bold,
                              // ),
                            )),
                          ]))),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text("Back to Home")),
            ],
          ),
        ),
      ),
    );
  }
}
