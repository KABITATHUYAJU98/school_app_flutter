import 'package:flutter/material.dart';
import 'package:hamro_vidyalaya/constants.dart';
import 'package:hamro_vidyalaya/screens/fee_screen/data/fee_data.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fee'),
      ),
      body: Column(children: [
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding),
                topRight: Radius.circular(kDefaultPadding),
              ),
              color: kOtherColor),
          child: ListView.builder(
              padding: EdgeInsets.all(kDefaultPadding),
              itemCount: fee.length,
              itemBuilder: (context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: kDefaultPadding),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(kDefaultPadding),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(kDefaultPadding),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: kTextLightColor, blurRadius: 2.0)
                          ]),
                      child: Column(children: [
                        FeeDetailRow(
                            title: 'Receipt No',
                            statusValue: fee[index].receiptNo),
                        SizedBox(
                          height: kDefaultPadding,
                          child: Divider(
                            thickness: 1.0,
                          ),
                        ),
                        FeeDetailRow(
                            title: 'Month', statusValue: fee[index].month),
                        sizedBox,
                        FeeDetailRow(
                            title: 'Payment Date',
                            statusValue: fee[index].date),
                        sizedBox,
                        FeeDetailRow(
                            title: 'Status',
                            statusValue: fee[index].paymentStatus),
                        sizedBox,
                        SizedBox(
                          height: kDefaultPadding,
                          child: Divider(
                            thickness: 1.0,
                          ),
                        ),
                        FeeDetailRow(
                            title: 'Total',
                            statusValue: fee[index].totalAmount),
                      ]),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40.0,
                    )
                  ]),
                );
              }),
        ))
      ]),
    );
  }
}

class FeeDetailRow extends StatelessWidget {
  const FeeDetailRow(
      {super.key, required this.title, required this.statusValue});
  final String title;
  final String statusValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 14.0, color: kTextLightColor),
        ),
        Text(
          statusValue,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14.0,
              color: kTextLightColor,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
