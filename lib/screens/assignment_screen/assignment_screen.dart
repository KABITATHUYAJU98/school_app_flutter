import "package:flutter/material.dart";
import "package:hamro_vidyalaya/constants.dart";
import "package:hamro_vidyalaya/screens/assignment_screen/data/assignment_data.dart";
import "package:hamro_vidyalaya/screens/assignment_screen/widgets/assignment_widgets.dart";

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding),
                      topRight: Radius.circular(kDefaultPadding),
                    )),
                child: ListView.builder(
                    padding: EdgeInsets.all(kDefaultPadding),
                    itemCount: assignment.length,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: kDefaultPadding),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(kDefaultPadding),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(kDefaultPadding),
                                    color: kOtherColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: kTextLightColor,
                                          blurRadius: 2.0)
                                    ]),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color:
                                              kSecondaryColor.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(
                                              kDefaultPadding),
                                        ),
                                        child: Center(
                                            child: Text(
                                          assignment[index].subjectName,
                                          style: const TextStyle(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w400,
                                              color: kPrimaryColor),
                                        )),
                                      ),
                                      kHalfSizedBox,
                                      Text(
                                        assignment[index].topicName,
                                        style: const TextStyle(
                                            color: kTextBlackColor,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      kHalfSizedBox,
                                      AssignmentDetailRow(
                                          title: 'Assign Date',
                                          statusValue:
                                              assignment[index].assignDate),
                                      AssignmentDetailRow(
                                          title: 'Last Date',
                                          statusValue:
                                              assignment[index].lastDate),
                                      AssignmentDetailRow(
                                          title: 'Status',
                                          statusValue:
                                              assignment[index].status),
                                      kHalfSizedBox,
                                      //use condition to display button
                                      if (assignment[index].status == 'Pending')
                                        //then show button
                                        AssignmentButton(
                                            title: 'Submit', onPress: () {})
                                    ]),
                              )
                            ]),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
