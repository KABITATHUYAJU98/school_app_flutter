import 'package:flutter/material.dart';
import 'package:hamro_vidyalaya/constants.dart';

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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hi ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.w200),
                        ),
                        Text(
                          'Kabita',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      'Class X-II A | Roll no: 12',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Container(
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                        color: kOtherColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),
                      ),
                      child: Center(
                        child: Text(
                          '2020-2021',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 12.0,
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w200),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: kDefaultPadding / 6),
                GestureDetector(
                  onTap: () {
                    //go to profile edit screen here
                  },
                  child: const CircleAvatar(
                    minRadius: 50.0,
                    maxRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage:
                        AssetImage('assets/images/student_profile.jpeg'),
                  ),
                )
              ],
            ),

            //for next row
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    //go to attendance screen here
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 9,
                    decoration: BoxDecoration(
                      color: kOtherColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Attendance',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 16.0,
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w800),
                          ),
                          Text(
                            '95.5%',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 25.0,
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w300),
                          )
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //go to attendance screen here
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 9,
                    decoration: BoxDecoration(
                      color: kOtherColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Fees Due',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 16.0,
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w800),
                          ),
                          Text(
                            '600\$',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 25.0,
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w300),
                          )
                        ]),
                  ),
                )
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
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  )),
            ),
          ),
        ),
      ]),
    );
  }
}
