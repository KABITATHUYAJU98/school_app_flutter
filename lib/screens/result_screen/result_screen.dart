import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hamro_vidyalaya/constants.dart';
import 'package:hamro_vidyalaya/screens/result_screen/components/result_component.dart';
import 'package:hamro_vidyalaya/screens/result_screen/data/result_data.dart';
import 'package:collection/collection.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);
  static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
    int oMarks = result.map((e) => e.obtainedMarks).sum.toInt();
    int tMarks = result.map((e) => e.totalMarks).sum.toInt();

    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(children: [
        Container(
          child: Container(
            height: 100,
            margin: EdgeInsets.all(20),
            child: CustomPaint(
              foregroundPainter: CircularPainter(
                  backGroundColor: kPrimaryColor,
                  lineColor: kOtherColor,
                  width: 10),
              child: Center(
                  //sum total marks and obtained marks here || use collection library for sum function
                  child: Text(
                oMarks.toString() + '\n / \n' + tMarks.toString(),
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              )),
            ),
          ),
        ),
        Text(
          'You are excellent',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontWeight: FontWeight.w900),
        ),
        Text(
          'Alisha!!',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        sizedBox,
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: kBorderRadius,
              color: kOtherColor,
            ),
            child: ListView.builder(
                padding: EdgeInsets.all(kDefaultPadding),
                itemCount: result.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding),
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),
                        boxShadow: [
                          BoxShadow(
                            color: kTextLightColor,
                            blurRadius: 2.0,
                          )
                        ]),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                result[index].subjectName,
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${result[index].obtainedMarks} / ${result[index].totalMarks}',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width:
                                            result[index].totalMarks.toDouble(),
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        kDefaultPadding),
                                                    topRight: Radius.circular(
                                                        kDefaultPadding))),
                                      ),
                                      Container(
                                        height: 20,
                                        width: result[index]
                                            .obtainedMarks
                                            .toDouble(),
                                        decoration: BoxDecoration(
                                            color: result[index].grade == 'D'
                                                ? kErrorBorderColor
                                                : kOtherColor,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  kDefaultPadding),
                                              bottomRight: Radius.circular(
                                                  kDefaultPadding),
                                            )),
                                      )
                                    ],
                                  ),
                                  Text(
                                    result[index].grade,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(fontWeight: FontWeight.w900),
                                  )
                                ],
                              )
                            ],
                          )
                        ]),
                  );
                }),
          ),
        )
      ]),
    );
  }
}
