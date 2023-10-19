import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hamro_vidyalaya/constants.dart';
import 'package:hamro_vidyalaya/screens/fee_screen/fee_screen.dart';
import 'package:hamro_vidyalaya/screens/home_screen/widgets/student_data.dart';
import 'package:hamro_vidyalaya/screens/my_profile/my_profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //dividing screen into 2 parts - fixed height for 1st half
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StudentName(studentName: 'Kabita'),
                    kHalfSizedBox,
                    StudentClass(studentClass: 'Class X-II A | Roll no: 12'),
                    kHalfSizedBox,
                    StudentYear(
                      studentYear: '2020-2021',
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding / 6),
                StudentPicture(
                    studentPicture: 'assets/images/student_profile.jpeg',
                    onPress: () {
                      //go to profile detail screen here
                      Navigator.pushNamedAndRemoveUntil(
                          context, MyProfileScreen.routeName, (route) => false);
                    })
              ],
            ),

            //for next row
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StudentDataCard(
                    title: 'Attendance', value: '95.5%', onPress: () {}),
                StudentDataCard(
                    title: 'Fees Due',
                    value: '600\$',
                    onPress: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, FeeScreen.routeName, (route) => false);
                    })
              ],
            )
          ]),
        ),

        //this will use all the remaining height of screen
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 2.5),
                    topRight: Radius.circular(kDefaultPadding * 2.5),
                  )),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/quiz.svg',
                          title: 'Take Quiz'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/assignment.svg',
                          title: 'Assignment')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/holiday.svg',
                          title: 'Holidays'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/timetable.svg',
                          title: 'Time\nTable')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/result.svg',
                          title: 'Result'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/datesheet.svg',
                          title: 'DateSheet')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/ask.svg',
                          title: 'Ask'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/gallery.svg',
                          title: 'Gallery')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/resume.svg',
                          title: 'Leave\nApplication'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/lock.svg',
                          title: 'Change\nPassword')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/event.svg',
                          title: 'Events'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/logout.svg',
                          title: 'Logout')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 40.0,
                width: 40.0,
                color: kOtherColor,
              ),
              Text(title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: kDefaultPadding / 3)
            ]),
      ),
    );
  }
}
