import 'package:flutter/material.dart';

class ReportItem extends StatelessWidget {
  final String date;
  final String order;
  final String omset;

  const ReportItem(this.date, this.order, this.omset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(date), Text(order), Text(omset)],
      ),
    );
  }
}
