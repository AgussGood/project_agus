import 'package:flutter/material.dart';
import 'package:project_agus/main_layout.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column Satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Widget Text 1'),
          Text('Widget Text 2'),
          Text('Widget Text 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Row Text 1'),
              Text('Row Text 2'),
              Text('Row Text 3'),
            ],
          )
        ],
      ),
    );
  }
}
