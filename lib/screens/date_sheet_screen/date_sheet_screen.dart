import 'package:flutter/material.dart';
import 'package:hamro_vidyalaya/constants.dart';
import 'package:hamro_vidyalaya/screens/date_sheet_screen/data/date_sheet_data.dart';

class DateSheetScreen extends StatelessWidget {
  const DateSheetScreen({super.key});
  static const String routeName = 'DateSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DateSheet'),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                )),
            child: ListView.builder(
                itemCount: dateSheet.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                        left: kDefaultPadding / 2, right: kDefaultPadding / 2),
                    padding: const EdgeInsets.all(kDefaultPadding / 2),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: kDefaultPadding,
                            child: Divider(
                              thickness: 1.0,
                            ),
                          ),

                          //1st need a row then 3 columns
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //1st COlumn
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dateSheet[index].date.toString(),
                                    style: TextStyle(
                                        color: kTextBlackColor,
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    dateSheet[index].monthName,
                                    style: TextStyle(
                                        color: kTextBlackColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),

                              //2nd Column
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    dateSheet[index].subjectName,
                                    style: TextStyle(
                                        color: kTextBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0),
                                  ),
                                  Text(
                                    dateSheet[index].dayName,
                                    style: TextStyle(
                                        color: kTextBlackColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.0),
                                  )
                                ],
                              ),

                              //3rd Column
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dateSheet[index].time,
                                    style: TextStyle(
                                        color: kTextLightColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13.0),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                            child: Divider(
                              thickness: 1.0,
                            ),
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
